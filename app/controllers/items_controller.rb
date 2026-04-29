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

  def claim
    @item = Item.find(params[:id])
    if @item.status == "available"
      @item.update(
        status: "in_progress",
        claimed_first_name: params[:claimed_first_name],
        claimed_last_name: params[:claimed_last_name],
        claimed_email: params[:claimed_email],
        claimed_by: "#{params[:claimed_first_name]} #{params[:claimed_last_name]}",
        claimed_at: Time.now
      )
      ClaimMailer.claim_notification(@item).deliver_now
      redirect_to @item, notice: "You have successfully claimed this item! A confirmation email has been sent."
    else
      redirect_to @item, alert: "This item is no longer available to claim."
    end
  end

  def release
    @item = Item.find(params[:id])
    if params[:admin_password] == ENV["ADMIN_PASSWORD"]
      @item.update(
        status: "available",
        claimed_by: nil,
        claimed_at: nil,
        claimed_first_name: nil,
        claimed_last_name: nil,
        claimed_email: nil
      )
      redirect_to @item, notice: "Claim has been released successfully."
    else
      redirect_to @item, alert: "Incorrect admin password. Claim was not released."
    end
  end

end
