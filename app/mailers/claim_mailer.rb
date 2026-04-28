class ClaimMailer < ApplicationMailer
  def claim_notification(item)
    @item = item
    @claimer_name = "#{item.claimed_first_name} #{item.claimed_last_name}"
    @claimer_email = item.claimed_email

    mail(
      to: @claimer_email,
      bcc: "AlexisDWhitney@gmail.com",
      from: "AlexisDWhitney@gmail.com",
      subject: "Your Transcription Claim: #{@item.title}"
    )
  end
end
