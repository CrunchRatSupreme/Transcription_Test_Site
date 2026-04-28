class ItemsController < ApplicationController
  def index
    @items = Item.all
    @total = Item.count
    @available = Item.where(status: "available").count
    @in_progress = Item.where(status: "in_progress").count
    @completed = Item.where(status: "completed").count
  end

  def show
    @item = Item.find(params[:id])
    @transcriptions = @item.transcriptions.order(created_at: :desc)
    @new_transcription = Transcription.new
  end

end
