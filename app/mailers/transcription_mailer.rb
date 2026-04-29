class TranscriptionMailer < ApplicationMailer
  def submitted(transcription)
    @transcription = transcription
    @item = transcription.item

    attachments[transcription.document.filename.to_s] = transcription.document.download if transcription.document.attached?

    mail(
      to: "AlexisDWhitney@gmail.com",
      from: "AlexisDWhitney@gmail.com",
      subject: "New Transcription Submitted: #{@item.title}"
    )
  end

  def confirmation(transcription)
    @transcription = transcription
    @item = transcription.item

    mail(
      to: transcription.transcriber_email,
      from: "AlexisDWhitney@gmail.com",
      subject: "Thank you for your transcription submission!"
    )
  end
end