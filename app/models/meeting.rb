class Meeting < ApplicationRecord

  belongs_to :location
  belongs_to :event

  validate :end_after_start
  validates :name, :start_time, :end_time, presence:true

  private
  def end_after_start
    if end_time < start_time
      errors.add(:end_time, "must be after the start time")
    end
  end
end
