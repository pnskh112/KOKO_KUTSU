class ShoesController < ApplicationController
  def index
  end
  def new
    @test_id = 104
    @box = Box.where(id: @test_id)
    @box_user = Box_user.new
    respond_to do |format|
      format.html
      # format.json { render id: @box.id, max_vertical: @box.max_vertical, max_side: @box.max_side }
      format.json
    end
  end
end
