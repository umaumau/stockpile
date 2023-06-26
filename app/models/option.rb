class Option < ApplicationRecord
  validates :at_least_one_field_present
  validates :rate, numericality: {only_integer: true, greater_than_or_equal_to: 1}

  belongs_to :user

  private

  def at_least_one_field_present
    if goal.blank? && limit.blank? && rate.blank?
      errors.add(:option_error, "1か所でも入力がない場合は保存されません")
    end
  end

end