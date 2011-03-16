class DocviewsController < ApplicationController
  # GET /docviews
  # GET /docviews.xml
  def index
    @docviews = Docview.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @docviews }
    end
  end

  # GET /docviews/1
  # GET /docviews/1.xml
  def show
    @docview = Docview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @docview }
    end
  end

  # GET /docviews/new
  # GET /docviews/new.xml
  def new
    @docview = Docview.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @docview }
    end
  end

  # GET /docviews/1/edit
  def edit
    @docview = Docview.find(params[:id])
  end

  # POST /docviews
  # POST /docviews.xml
  def create
    @docview = Docview.new(params[:docview])

    respond_to do |format|
      if @docview.save
        format.html { redirect_to(@docview, :notice => 'Docview was successfully created.') }
        format.xml  { render :xml => @docview, :status => :created, :location => @docview }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @docview.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /docviews/1
  # PUT /docviews/1.xml
  def update
    @docview = Docview.find(params[:id])

    respond_to do |format|
      if @docview.update_attributes(params[:docview])
        format.html { redirect_to(@docview, :notice => 'Docview was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @docview.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /docviews/1
  # DELETE /docviews/1.xml
  def destroy
    @docview = Docview.find(params[:id])
    @docview.destroy

    respond_to do |format|
      format.html { redirect_to(docviews_url) }
      format.xml  { head :ok }
    end
  end
end
