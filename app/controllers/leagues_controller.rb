class LeaguesController < ApplicationController
  def index
    @leagues = League.find(:all)

    respond_to do |format|
      format.html
      format.xml  { render :xml => @leagues }
    end
  end

  def show
    @league = League.find(params[:id])

    respond_to do |format|
      format.html
      format.xml  { render :xml => @league }
    end
  end

  def new
    @league = League.new

    respond_to do |format|
      format.html
      format.xml  { render :xml => @league }
    end
  end

  def edit
    @league = League.find(params[:id])
  end

  def create
    @league = League.new(params[:league])

    respond_to do |format|
      if @league.save
        flash[:notice] = 'League was successfully created.'
        format.html { redirect_to(@league) }
        format.xml  { render :xml => @league, :status => :created, :location => @league }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @league.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @league = League.find(params[:id])

    respond_to do |format|
      if @league.update_attributes(params[:league])
        flash[:notice] = 'League was successfully updated.'
        format.html { redirect_to(@league) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @league.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @league = League.find(params[:id])
    @league.destroy

    respond_to do |format|
      format.html { redirect_to(leagues_url) }
      format.xml  { head :ok }
    end
  end
end
