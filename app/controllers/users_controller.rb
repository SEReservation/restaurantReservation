class UsersController < ApplicationController
  def show
	@user = User.find(params[:id])
  end

  def new
	@user = User.new
  end

  def create
    	@user = User.new(user_params)    # Not the final implementation!
    	if @user.save
		log_in @user
    	        flash[:success] = "Welcome to your Restaurant Account!"
		redirect_to @user
	else
      		render 'new'
    	end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :role, :password,
                                   :password_confirmation)
    end
end
