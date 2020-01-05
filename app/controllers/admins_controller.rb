class AdminsController < ApplicationController
    def new
      @admin = Admin.new
    end
    def create
     @admin = Admin.new(admin_params)
      if @admin.save
        redirect_to boxes_path
      else
        render 'new'
      end
    end
  
    private
  
    def admin_params
      params.require(:admin).permit(:name, :mail, :password, :password_confirmation, :remember_token)
    end
end
