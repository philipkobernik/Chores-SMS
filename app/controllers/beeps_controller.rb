class BeepsController < ApplicationController
  # GET /beeps
  # GET /beeps.xml
  def index
    @beeps = Beep.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beeps }
    end
  end

  # GET /beeps/1
  # GET /beeps/1.xml
  def show
    @beep = Beep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @beep }
    end
  end

  # GET /beeps/new
  # GET /beeps/new.xml
  def new
    @beep = Beep.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beep }
    end
  end

  # GET /beeps/1/edit
  def edit
    @beep = Beep.find(params[:id])
  end

  # POST /beeps
  # POST /beeps.xml
  def create
    @beep = Beep.new(params[:beep])

    respond_to do |format|
      if @beep.save
        format.html { redirect_to(@beep, :notice => 'Beep was successfully created.') }
        format.xml  { render :xml => @beep, :status => :created, :location => @beep }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @beep.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /beeps/1
  # PUT /beeps/1.xml
  def update
    @beep = Beep.find(params[:id])

    respond_to do |format|
      if @beep.update_attributes(params[:beep])
        format.html { redirect_to(@beep, :notice => 'Beep was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @beep.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /beeps/1
  # DELETE /beeps/1.xml
  def destroy
    @beep = Beep.find(params[:id])
    @beep.destroy

    respond_to do |format|
      format.html { redirect_to(beeps_url) }
      format.xml  { head :ok }
    end
  end
end
