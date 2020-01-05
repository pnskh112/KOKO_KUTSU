class BoxesController < ApplicationController
  before_action :set_box, only: [:show, :edit, :update, :destroy]

  # GET /boxes
  # GET /boxes.json
  # def index
  #   # Slack.channels_create(token: config.token, name: 'slack_rails_test5', validate: 'true')
  #   # Slack.chat_postMessage(text: 'hello!', username: 'slack_test_bot', channel: "#slack_rails_test5")
  #   redirect_to "boxes/new"
  #   # @boxes = Box.all
  # end

  # GET /boxes/1
  # GET /boxes/1.json
  # def show
  # end

  # GET /boxes/new
  def new
    @box = Box.new
  end

  # GET /boxes/1/edit
  def edit
  end

  # POST /boxes
  # POST /boxes.json
  def create
    @box = Box.new(box_params)
    respond_to do |format|
      if @box.save
        format.html { redirect_to shoes_path, notice: 'Box was successfully created.' }
        format.json { render :index, status: :created, location: @box }
      else
        format.html { render :new, notice: '登録できてません' }
        format.json { render json: @box.errors, status: :unprocessable_entity }
      end
    end
end

  # PATCH/PUT /boxes/1
  # PATCH/PUT /boxes/1.json
  def update
    respond_to do |format|
      if @box.update(box_params)
        binding.pry
        format.html { redirect_to "/shoes/#{@box.id}", notice: 'Box was successfully updated.' }
        # format.json { render :show, status: :ok, location: @box }
      # else
        # format.html { render :edit }
        # format.json { render json: @box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boxes/1
  # DELETE /boxes/1.json
  def destroy
    @box.destroy
    respond_to do |format|
      format.html { redirect_to boxes_url, notice: 'Box was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_box
      @box = Box.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def box_params
      params.require(:box).permit(:name,:max_vertical, :max_side)
    end
end
