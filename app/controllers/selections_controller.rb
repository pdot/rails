class SelectionsController < ApplicationController
  def index
    @selections = Selection.find(:all)

    respond_to do |format|
      format.html
      format.xml  { render :xml => @selections }
    end
  end

  def show
    @selection = Selection.find(params[:id])

    respond_to do |format|
      format.html
      format.xml  { render :xml => @selection }
    end
  end

  def new
    @selection = Selection.new

    respond_to do |format|
      format.html
      format.xml  { render :xml => @selection }
    end
  end

  def edit
    @selection = Selection.find(params[:id])
  end

  def create
    @selection = Selection.new(params[:selection])

    respond_to do |format|
      if @selection.save
        flash[:notice] = 'Selection was successfully created.'
        format.html { redirect_to(@selection) }
        format.xml  { render :xml => @selection, :status => :created, :location => @selection }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @selection.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @selection = Selection.find(params[:id])

    respond_to do |format|
      if @selection.update_attributes(params[:selection])
        flash[:notice] = 'Selection was successfully updated.'
        format.html { redirect_to(@selection) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @selection.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @selection = Selection.find(params[:id])
    @selection.destroy

    respond_to do |format|
      format.html { redirect_to(selections_url) }
      format.xml  { head :ok }
    end
  end
end
