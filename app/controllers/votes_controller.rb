class VotesController < ApplicationController
  def index
    @votes = Vote.all
  end

  def show
  end

  def new
    @vote = Vote.new
    @message = params[:message]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vote }
    end
  end

  def edit
  end

  def create
    @vote = Vote.create(params[:message_id])
    
    respond_to do |format|
      if @vote.save
        format.html { redirect_to(@vote, :notice => 'Vote was successfully created.') }
        format.xml  { render :xml => @vote, :status => :created, :location => @vote }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vote.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
  end

end
