class Record < ApplicationRecord
  validates :price,       presence: true
  validates :time_minute, presence: true
  validates :content,     presence: true

  belongs_to :user
end
