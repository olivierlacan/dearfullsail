class VotesController < ApplicationController
  
  before_filter :authenticate_student!, :except => [:show, :index]
  
  def index
    @votes = Vote.all
  end

  def show
  end

  def new
    @message = Message.find(params[:message_id])
    @vote = @message.votes.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vote }
    end
  end

  def edit
    @vote = Vote.find(params[:id])
  end

  def create
    @message = Message.find(params[:message_id])
    
    # if the student is logged in (crappy)
    if current_student
      # is there already a vote on that message by that same (current) student
      if @vote = @message.votes.find_by_student_id(current_student.id)
        # add the charge to his existing vote
        @vote.charge = params[:charge] || 1
      else
        # if this student has never voted on this message, add a vote with the proper charge
        @vote = @message.votes.create(:student_id => current_student.id, :charge => params[:charge] || 1)
      end
    end
    
    respond_to do |format|
      if current_student 
        if @vote.save
          # Caching the vote count inside the message vote_count
          @message.vote_count = @message.votes.vote_count
          @message.save
        
          format.html { redirect_to(messages_path, :notice => 'Vote was successfully created.') }
          format.xml  { render :xml => @vote, :status => :created, :location => @vote }
        else  
          format.html { redirect_to(messages_path, :notice => 'Nope buddy, you already voted.' ) }
          #format.html { render :action => "new" }
          format.xml  { render :xml => @vote.errors, :status => :unprocessable_entity }
        end
      else
        format.html { redirect_to(messages_path, :notice => 'You need to login to vote.') }
      end
    end
  end

  def update
     @vote = Vote.find(params[:id])

      respond_to do |format|
        if @vote.update_attributes(params[:vote])
          format.html { redirect_to(@vote, :notice => 'Vote was successfully updated.') }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @vote.errors, :status => :unprocessable_entity }
        end
      end
  end
  
  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
    
    redirect_to @vote.message
  end

end
