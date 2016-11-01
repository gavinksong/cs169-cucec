class AdminsController < ApplicationController
  before_action :authenticate_admin!
 
  
  def index 
    @micropost = current_admin.microposts.build if admin_signed_in?
    @microposts = current_admin.microposts.paginate(page: params[:page]) if current_admin.microposts
  end
  
  def show
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