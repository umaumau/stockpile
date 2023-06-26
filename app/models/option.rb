class Option < ApplicationRecord
  validate :at_least_one_field_present

  belongs_to :user

  private

  def at_least_one_field_present
    if goal.blank? && limit.blank? && rate.blank?
      errors.add(:option_error, "1か所でも入力がない場合は保存されません")
    end
  end

end