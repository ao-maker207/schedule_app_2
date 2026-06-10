class Schedule < ApplicationRecord
  validates :title, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  validates :title, length: { maximum: 20 }
  validates :memo, length: { maximum: 500 }

  validate :end_date_after_start_date

  def end_date_after_start_date
    return if start_date.blank? || end_date.blank?

    if end_date < start_date
      errors.add(:end_date, "は開始日以降の日付を選択してください")
    end
  end
end