class Location < ActiveRecord::Base
	has_many :meetings
	validates :name, presence: true
end
