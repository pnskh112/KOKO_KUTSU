class SignupController < ApplicationController
#   def step1
#     @admin = Admin.new
#   end
#   def step2
#     # step1で入力された値をsessionに保存
#     session[:email] = admin_params[:email]
#     session[:password] = admin_params[:password]
#     session[:password_confirmation] = admin_params[:password_confirmation]
#     @admin = Admin.new # 新規インスタンス作成
#   end
#   def done
#     sign_in Admin.find(session[:id]) unless user_signed_in?
#   end

#   def create
#     @admin = Admin.new(
#       nickname: session[:nickname], # sessionに保存された値をインスタンスに渡す
#       email: session[:email],
#       password: session[:password],
#       password_confirmation: session[:password_confirmation],
#       last_name: session[:last_name], 
#       first_name: session[:first_name], 
#       last_name_kana: session[:last_name_kana], 
#       first_name_kana: session[:first_name_kana]
#     )
#     if @admin.save
#       session[:id] = @admin.id
#       redirect_to done_signup_index_path
#     else
#       render '/signup/registration'
#     end
#   end

#   private
#     def admin_params
#       params.require(:admin).permit(
#         :email,
#         :encrypted_password,
#         :reset_password_token,
#         :reset_password_sent_at,
#         :remember_created_at
#       )
#     end
end
