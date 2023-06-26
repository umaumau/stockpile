class Record < ApplicationRecord
  validates :price,       presence: true, unless: :time_minute?
  validates :time_minute, presence: true, unless: :price?      
  validates :content,     presence: true

  belongs_to :user
end
