class Schedule < ApplicationRecord
  validates :name, presence: true, length: { maximum:30 }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
