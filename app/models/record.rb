class Record < ApplicationRecord
  validates :price,       presence: true, unless: :time_minute? , numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :time_minute, presence: true, unless: :price?       , numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :content,     presence: true

  belongs_to :user
end
