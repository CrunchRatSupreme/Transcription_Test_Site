class Transcription < ApplicationRecord
  belongs_to :item
  
  validates :content, presence: true
  validates :transcriber_name, presence: true
end
