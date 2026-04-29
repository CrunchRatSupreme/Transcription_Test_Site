class TranscriptionsController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @transcription = @item.transcriptions.build(transcription_params)

    if @transcription.save
      @item.update(status: "in_progress") if @item.status == "available"
      TranscriptionMailer.submitted(@transcription).deliver_now
      TranscriptionMailer.confirmation(@transcription).deliver_now
      redirect_to @item, notice: "Thank you! Your transcription has been submitted and a confirmation email has been sent."
    else
      redirect_to @item, alert: "Please fill in all fields before submitting."
    end
  end

  private

  def transcription_params
    params.require(:transcription).permit(:content, :transcriber_name, :transcriber_email, :document)
  end
end