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
       flash[:notice] = "Upload successful"
       redirect_to resources_path
    else
       flash[:notice] = "Make sure to name a file and upload it."
       redirect_to new_resource_path
    end

  end

  def destroy
    @resource = Resource.find(params[:id])
    @resource.delete
    flash[:success] = "The resource #{@resource.name} has been deleted."
    redirect_to resources_path
  end
  
  private
    def resource_params
    params.require(:resource).permit(:name, :attachment)
  end
end
