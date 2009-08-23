class ThingsController < ApplicationController
  def index
    @things = Thing.all
  end
  
  def new
    @thing = Thing.new
  end
  
  def create
    @thing = Thing.new(params[:thing])
    if @thing.save
      flash[:notice] = "Successfully created thing."
      redirect_to things_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @thing = Thing.find(params[:id])
  end
  
  def update
    @thing = Thing.find(params[:id])
    if @thing.update_attributes(params[:thing])
      flash[:notice] = "Successfully updated thing."
      redirect_to things_url
    else
      render :action => 'edit'
    end
  end
end
