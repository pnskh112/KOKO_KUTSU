class UsersController < ApplicationController
  before_action :require_box_id!, only: [:new]
  # $num_boxid = require_box_id!

  def new
    @num_boxid = params[:format]
    @user = User.new
  end

  def create
   @user = User.new(user_params)
   @box_user = Box_user.where(id: params[:format])
    if @user.save
      # redirect_to new_shoe_path($num_boxid)
      redirect_to new_shoe_path(params[:format])

    else
      render 'new'
    end
  end

  def show
    @user = User.where(id: params[:format])
    @box_user = Box_user.where(id: params[:format])
       # redirect_to new_shoe_path($num_boxid)
      #  redirect_to new_shoe_path(params[:format])
     
  end



  def user_params
    params.require(:user).permit(:name, :mail, :password, :password_confirmation, :remember_token)
  end
  def require_box_id!
    path = request.path
    # num_boxid = 263
    $num_boxid = path[24,100]
  end

end
