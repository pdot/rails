class NominationsController < ApplicationController
  def index
    @nominations = Nomination.find(:all)

    respond_to do |format|
      format.html
      format.xml  { render :xml => @nominations }
    end
  end

  def show
    @nomination = Nomination.find(params[:id])

    respond_to do |format|
      format.html
      format.xml  { render :xml => @nomination }
    end
  end

  def new
    @nomination = Nomination.new

    respond_to do |format|
      format.html
      format.xml  { render :xml => @nomination }
    end
  end

  def edit
    @nomination = Nomination.find(params[:id])
  end

  def create
    @nomination = Nomination.new(params[:nomination])

    respond_to do |format|
      if @nomination.save
        flash[:notice] = 'Nomination was successfully created.'
        format.html { render :action => "new" }#{ redirect_to(@nomination) }
        format.xml  { render :xml => @nomination, :status => :created, :location => @nomination }
      else
        flash[:warn] = 'Failed to create nomination.'
        format.html { render :action => "new" }
        format.xml  { render :xml => @nomination.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @nomination = Nomination.find(params[:id])

    respond_to do |format|
      if @nomination.update_attributes(params[:nomination])
        flash[:notice] = 'Nomination was successfully updated.'
        format.html { redirect_to(@nomination) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nomination.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @nomination = Nomination.find(params[:id])
    @nomination.destroy

    respond_to do |format|
      format.html { redirect_to(nominations_url) }
      format.xml  { head :ok }
    end
  end
end
