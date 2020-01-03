class ShoesController < ApplicationController
  def index
    @test_id = 1
    @box = Box.where(id: @test_id)
    respond_to do |format|
      format.html
      # format.json { render id: @box.id, max_vertical: @box.max_vertical, max_side: @box.max_side }
      format.json
    end
  end
end
