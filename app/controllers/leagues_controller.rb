class LeaguesController < ApplicationController

  def index
    @leagues = User.find(current_user.id).leagues

    respond_to do |format|
      format.html
      format.xml  { render :xml => @leagues }
      format.xml  { render :json => @leagues }
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
    # automatically create a passcode
    @user = User.find(current_user.id)
    @league = League.new(params[:league]) # TODO: pretty sure this is not secure. fix it.
     
    respond_to do |format|
      if @league.save
        @user.leagues << @league # TODO : is this the best way?
        flash[:notice] = 'League was successfully created.'
        format.html { redirect_to(@league) }
        format.xml  { render :xml => @league, :status => :created, :location => @league }
        format.json  { render :json => @league, :status => :created, :location => @league }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @league.errors, :status => :unprocessable_entity }
        format.json  { render :json => @league.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def join
    @user = User.find(current_user.id)
    @league = League.find_by_passcode(params[:passcode])
    
    respond_to do |format|
      if @league
        if @user.leagues.exists?(@league.id)
          flash[:notice] = 'You are already a member of this pool.'
        else
          @user.leagues << @league
          flash[:notice] = 'You successfully joined ' + @league.name + '.'
        end
        format.xml  { head :ok }
      else
        flash[:notice] = 'Error joining pool. Please make sure your activation code is spelled properly.'
        format.xml  { head :bad_request }
      end
      format.html { redirect_to(leagues_url) }
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
    @user = User.find(current_user.id)
    @league = League.find(params[:id])
    @user.leagues.delete(@league)
    
    @league.destroy unless @league.users.count > 1

    respond_to do |format|
      format.html { redirect_to(leagues_url) }
      format.xml  { head :ok }
    end
  end
end
