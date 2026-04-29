class Transcription < ApplicationRecord
  belongs_to :item
  has_one_attached :document

  validates :content, presence: true
  validates :transcriber_name, presence: true
  validates :transcriber_email, presence: true
end
