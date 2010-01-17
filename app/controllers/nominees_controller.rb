class NomineesController < ApplicationController
  def index
    #@nominees = Nominee.find(:all)
    @nominees = Award.find_by_id(params[:award_id]).nominees

    respond_to do |format|
      format.html
      format.xml  { render :xml => @nominees }
    end
  end

  def show
    @nominee = Nominee.find(params[:id])

    respond_to do |format|
      format.html
      format.xml  { render :xml => @nominee }
    end
  end

  def new
    @nominee = Nominee.new

    respond_to do |format|
      format.html
      format.xml  { render :xml => @nominee }
    end
  end

  def edit
    @nominee = Nominee.find(params[:id])
  end

  def create
    @nominee = Nominee.new(params[:nominee])

    respond_to do |format|
      if @nominee.save
        flash[:notice] = 'Nominee was successfully created.'
        format.html { redirect_to(@nominee) }
        format.xml  { render :xml => @nominee, :status => :created, :location => @nominee }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nominee.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @nominee = Nominee.find(params[:id])

    respond_to do |format|
      if @nominee.update_attributes(params[:nominee])
        flash[:notice] = 'Nominee was successfully updated.'
        format.html { redirect_to(@nominee) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nominee.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @nominee = Nominee.find(params[:id])
    @nominee.destroy

    respond_to do |format|
      format.html { redirect_to(nominees_url) }
      format.xml  { head :ok }
    end
  end
end
