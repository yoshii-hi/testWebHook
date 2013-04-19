class SelfupdatesController < ApplicationController
  # GET /selfupdates
  # GET /selfupdates.xml
  def index
    @selfupdates = Selfupdate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @selfupdates }
    end
  end

  # GET /selfupdates/1
  # GET /selfupdates/1.xml
  def show
    @selfupdate = Selfupdate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @selfupdate }
    end
  end

  # GET /selfupdates/new
  # GET /selfupdates/new.xml
  def new
    @selfupdate = Selfupdate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @selfupdate }
    end
  end

  # GET /selfupdates/1/edit
  def edit
    @selfupdate = Selfupdate.find(params[:id])
  end

  # POST /selfupdates
  # POST /selfupdates.xml
  def create
    @selfupdate = Selfupdate.new(params[:selfupdate])

    respond_to do |format|
      if @selfupdate.save
        format.html { redirect_to(@selfupdate, :notice => 'Selfupdate was successfully created.') }
        format.xml  { render :xml => @selfupdate, :status => :created, :location => @selfupdate }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @selfupdate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /selfupdates/1
  # PUT /selfupdates/1.xml
  def update
    @selfupdate = Selfupdate.find(params[:id])

    respond_to do |format|
      if @selfupdate.update_attributes(params[:selfupdate])
        format.html { redirect_to(@selfupdate, :notice => 'Selfupdate was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @selfupdate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /selfupdates/1
  # DELETE /selfupdates/1.xml
  def destroy
    @selfupdate = Selfupdate.find(params[:id])
    @selfupdate.destroy

    respond_to do |format|
      format.html { redirect_to(selfupdates_url) }
      format.xml  { head :ok }
    end
  end

  def pull
    result= `pull`
    print result

    respond_to do |format|
      format.html { redirect_to(selfupdates_url) }
      format.xml  { head :ok }
    end
  end
end
