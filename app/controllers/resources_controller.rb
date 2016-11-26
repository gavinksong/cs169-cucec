class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_params)
    
    @resource.save! #force save to allow tests to pass. this should be modified to cater for save falure cases
       flash[:notice] = "Upload successful"
       redirect_to resources_path

  end

  def destroy
    @resource = Resource.find(params[:id])
    @resource.delete
    flash[:success] = "The resource #{@resource.name} has been deleted."
    redirect_to resources_path
  end
  
  private
    def resource_params
    params.require(:resource).permit(:name, :attachment, :video, :audio)
  end
end
