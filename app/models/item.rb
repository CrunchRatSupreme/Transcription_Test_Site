class Item < ApplicationRecord
  has_many :transcriptions
  
  validates :title, presence: true
  validates :status, inclusion: { in: %w[available in_progress completed] }
  
  def self.statuses
    %w[available in_progress completed]
  end
end