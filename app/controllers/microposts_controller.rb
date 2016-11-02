class MicropostsController < ApplicationController

  def create
    # byebug
    @user = Admin.find(1)
    # @micropost = current_admin.microposts.build(micropost_params)
    @micropost = @user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to admins_path
    end
  end

  def destroy
    @micropost = Micropost.find(params[:id])
    @micropost.destroy
    flash[:success] = "Micropost deleted"
    redirect_to request.referrer || admins_path
  end
  
  private

    def micropost_params
      params.require(:micropost).permit(:content)
    end
    
    def correct_admin
      @micropost = current_admin.microposts.find_by(id: params[:id])
      redirect_to admins_path if @micropost.nil?
    end
end
