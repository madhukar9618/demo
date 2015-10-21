class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :pet
  validate :date_validation
  validates :pet, presence: true
  validates :customer, presence: true
  validates :remainder_of_appointment, presence: true
  validates :reason_for_visiting, presence: true

  def date_validation
    if
      self.date_of_visit.past?
      error.add(:date_of_visit,"date cannot be from past")
    end
  end

  
end
