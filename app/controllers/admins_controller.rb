class AdminsController < ApplicationController
  before_action :authenticate_admin!
 
  
  def index 
      @micropost = current_admin.microposts.build if admin_signed_in?
  end
  
  def show
    @user = Admin.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page]) if @user.microposts
  end
  
  private

    def admin_params
      params.require(:admin).permit(:email, :password,
                                   :password_confirmation)
    end

    # Before filters

    # # Confirms the correct user.
    # def correct_user
    #   @user = Admin.find(params[:id])
    #   redirect_to(root_path) unless current_admin?(@user)
    # end
end