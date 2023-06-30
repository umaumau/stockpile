class Option < ApplicationRecord

  validates :rate, presence: true
  
  belongs_to :user

end