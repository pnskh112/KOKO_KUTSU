class ShoesController < ApplicationController
  def index
  end
  def new
    @user_vertical = params[:user_vertical]
    @user_side = params[:user_vertical]
    @test_id = params[:format]
    # @test_id = 1
    # binding.pry
    @box = Box.where(id: params[:format])
    # binding.pry
    # @box_user = Box_user.new
    # binding.pry
    # respond_to do |format|
    #   format.html
    #   format.json
    # end

    # @box_user = Box_user.new[params(1,3,4,'2019-01-01','2019-01-01')]

  end
  def create
    num_vertical = params[:commit][9,1]
    num_side = params[:commit][11,1]
    num_boxid = params[:commit][24,100]
    # @test_id = params[:format]
    # binding.pry
    # @box_user = Box_user.create(shoes_params)
    @box_user = Box_user.new(box_id: num_boxid , vertical: num_vertical , side: num_side )
    if @box_user.save
      @user = User.new(@test_id)
      # render :"_shoes_in.html.erb", notice: '登録はまだ終わってません！'
      # render :""
      redirect_to users_new_path(num_boxid)
    else
      alert
    end
  end

  # def shoes_params
  #   params.require(:Box_users)permit(1,2,1)
  # end
end
