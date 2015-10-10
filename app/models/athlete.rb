class Athlete < ActiveRecord::Base
	has_and_belongs_to_many :events
	has_many :runs

  	has_attached_file :avatar, styles: { medium: "300x300#", thumb: "100x100#" , favi: "50x50#" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
