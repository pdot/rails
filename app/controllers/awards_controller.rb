class AwardsController < ApplicationController

  def index
    @awards = Award.find(:all)

    respond_to do |format|
      format.html
      format.xml  { render :xml => @awards }
    end
  end

  def show
    @award = Award.find(params[:id])

    respond_to do |format|
      format.html
      format.xml  { render :xml => @award }
    end
  end

  def new
    @award = Award.new

    respond_to do |format|
      format.html
      format.xml  { render :xml => @award }
    end
  end

  def edit
    @award = Award.find(params[:id])
  end

  def create
    @award = Award.new(params[:award])

    respond_to do |format|
      if @award.save
        flash[:notice] = 'Award was successfully created.'
        format.html { redirect_to(@award) }
        format.xml  { render :xml => @award, :status => :created, :location => @award }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @award.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @award = Award.find(params[:id])

    respond_to do |format|
      if @award.update_attributes(params[:award])
        flash[:notice] = 'Award was successfully updated.'
        format.html { redirect_to(@award) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @award.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @award = Award.find(params[:id])
    @award.destroy

    respond_to do |format|
      format.html { redirect_to(awards_url) }
      format.xml  { head :ok }
    end
  end
end
