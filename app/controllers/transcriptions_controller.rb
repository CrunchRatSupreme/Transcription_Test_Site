class TranscriptionsController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @transcription = @item.transcriptions.build(transcription_params)

    if @transcription.save
      @item.update(status: "in_progress") if @item.status == "available"
      redirect_to @item, notice: "Thank you! Your transcription has been submitted."
    else
      redirect_to @item, alert: "Please fill in all fields before submitting."
    end
  end

  private

  def transcription_params
    params.require(:transcription).permit(:content, :transcriber_name)
  end
end