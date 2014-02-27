class Event < ActiveRecord::Base
	has_many :subscriptions
	has_many :attendees, through: :subscriptions
	validates :name, :start_date, :end_date, presence: true
	validate :dates_are_in_sequence

	def dates_are_in_sequence
		errors.add(:start_date, "must be before the End Date") if 
		!start_date.blank? and !end_date.blank? and end_date < start_date
	end
end
