class Doctor < ActiveRecord::Base
	has_many :appointments
	has_many :pets, :through => :appointments
	validates :name, length: {maximum: 35}, presence: true
	validates :zip, length: {is: 5}
	validates :years_in_pracice, inclusion: {in: 1..100}
end
