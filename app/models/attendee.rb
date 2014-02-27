class Attendee < ActiveRecord::Base
	has_many :subscriptions
	has_many :events, through: :subscriptions
end
