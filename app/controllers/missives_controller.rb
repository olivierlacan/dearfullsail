class MissivesController < ApplicationController
  # GET /missives
  # GET /missives.xml
  def index
    @missives = Missive.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @missives }
    end
  end

  # GET /missives/1
  # GET /missives/1.xml
  def show
    @missife = Missive.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @missife }
    end
  end

  # GET /missives/new
  # GET /missives/new.xml
  def new
    @missife = Missive.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @missife }
    end
  end

  # GET /missives/1/edit
  def edit
    @missife = Missive.find(params[:id])
  end

  # POST /missives
  # POST /missives.xml
  def create
    @missife = Missive.new(params[:missife])

    respond_to do |format|
      if @missife.save
        format.html { redirect_to(@missife, :notice => 'Missive was successfully created.') }
        format.xml  { render :xml => @missife, :status => :created, :location => @missife }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @missife.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /missives/1
  # PUT /missives/1.xml
  def update
    @missife = Missive.find(params[:id])

    respond_to do |format|
      if @missife.update_attributes(params[:missife])
        format.html { redirect_to(@missife, :notice => 'Missive was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @missife.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /missives/1
  # DELETE /missives/1.xml
  def destroy
    @missife = Missive.find(params[:id])
    @missife.destroy

    respond_to do |format|
      format.html { redirect_to(missives_url) }
      format.xml  { head :ok }
    end
  end
end
