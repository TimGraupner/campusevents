class Event < ApplicationRecord

  validate :end_after_start

  validates :name, :start_date, :end_date, presence:true

  private
    def end_after_start
      if end_date < start_date
        errors.add(:end_date, "must be after the start date")
      end
    end

end
