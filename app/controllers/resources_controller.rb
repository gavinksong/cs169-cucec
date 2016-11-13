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
       flash[:success] = "The resume #{@resource.name} has been uploaded."
       redirect_to admins_resources_index_path
    else
       flash[:error] = "Make sure to name a file and upload it."
       redirect_to admins_resources_new_path
    end

  end

  def destroy
    @resource = Resource.find(params[:id])
    @resource.delete
    flash[:success] = "The resource #{@resource.name} has been deleted."
    redirect_to admins_resources_index_path
  end
  
  private
    def resource_params
    params.require(:resource).permit(:name, :attachment)
  end
end
