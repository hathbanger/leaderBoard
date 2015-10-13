class Athlete < ActiveRecord::Base
	has_and_belongs_to_many :events
	has_many :runs
	validates :name,  :presence => true	
	validates :birthday,  :presence => true	
	validates :nationality,  :presence => true	

  	has_attached_file :avatar, styles: { medium: "300x300#", thumb: "100x100#" , favi: "50x50#" }, default_url: "/images/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def age
    ((Date.today - birthday) / 365).floor
  end
  

end
