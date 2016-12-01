class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_params)
    if @resource.save
      flash[:success] = "Upload successful"
      redirect_to resources_path
    else
      flash[:warning] = "Upload was not successful"
      render :new
    end
  end

  def destroy
    @resource = Resource.find(params[:id])
    @resource.delete
    @resource.delete_file
    flash[:info] = "The resource #{@resource.name} has been deleted."
    redirect_to resources_path
  end
  
  private
  def resource_params
    params.require(:resource).permit(:name, :attachment, :video, :audio)
  end
end
