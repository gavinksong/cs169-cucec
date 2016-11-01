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
  end
  
  private

    def micropost_params
      params.require(:micropost).permit(:content)
    end
end
