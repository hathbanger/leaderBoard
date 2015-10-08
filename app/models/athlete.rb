class Athlete < ActiveRecord::Base
	has_and_belongs_to_many :events
	has_many :runs
end
