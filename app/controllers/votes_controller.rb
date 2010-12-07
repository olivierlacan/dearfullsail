class VotesController < ApplicationController
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
    @vote = @message.votes.create(:charge => params[:charge] || 1)
    
    respond_to do |format|
      if @vote.save
        format.html { redirect_to(messages_path, :notice => 'Vote was successfully created.') }
        format.xml  { render :xml => @vote, :status => :created, :location => @vote }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vote.errors, :status => :unprocessable_entity }
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
