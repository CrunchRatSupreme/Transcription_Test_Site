# Preview all emails at http://localhost:3000/rails/mailers/transcription_mailer
class TranscriptionMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/transcription_mailer/submitted
  def submitted
    TranscriptionMailer.submitted
  end

  # Preview this email at http://localhost:3000/rails/mailers/transcription_mailer/confirmation
  def confirmation
    TranscriptionMailer.confirmation
  end
end
