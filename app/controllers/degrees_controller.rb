class DegreesController < ApplicationController
  
  before_filter :authenticate_student!, :except => [:show, :index]
  
  # GET /degrees
  # GET /degrees.xml
  def index
    @degrees = Degree.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @degrees }
    end
  end

  # GET /degrees/1
  # GET /degrees/1.xml
  def show
    @degree = Degree.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @degree }
    end
  end

  # GET /degrees/new
  # GET /degrees/new.xml
  def new
    @degree = Degree.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @degree }
    end
  end

  # GET /degrees/1/edit
  def edit
    @degree = Degree.find(params[:id])
  end

  # POST /degrees
  # POST /degrees.xml
  def create
    @degree = Degree.new(params[:degree])

    respond_to do |format|
      if @degree.save
        format.html { redirect_to(@degree, :notice => 'Degree was successfully created.') }
        format.xml  { render :xml => @degree, :status => :created, :location => @degree }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @degree.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /degrees/1
  # PUT /degrees/1.xml
  def update
    @degree = Degree.find(params[:id])

    respond_to do |format|
      if @degree.update_attributes(params[:degree])
        format.html { redirect_to(@degree, :notice => 'Degree was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @degree.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /degrees/1
  # DELETE /degrees/1.xml
  def destroy
    @degree = Degree.find(params[:id])
    @degree.destroy

    respond_to do |format|
      format.html { redirect_to(degrees_url) }
      format.xml  { head :ok }
    end
  end
end
