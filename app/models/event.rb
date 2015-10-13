class Event < ActiveRecord::Base
	has_and_belongs_to_many :athletes
	has_many :runs

  	has_attached_file :eventlogo, styles: { medium: "300x300>", thumb: "100x100>", favi: "50x50#"  }, default_url: "/images/missing.png"
  	validates_attachment_content_type :eventlogo, content_type: /\Aimage\/.*\Z/

	def days_until_event
	  evnt = Date.new(Date.today.year, date.month, date.day)
	  evnt += 1.year if Date.today >= evnt
	  (evnt - Date.today).to_i
	end 

	
	def athlete_run_count(athlete)
		self.athletes.all.where(athlete_id: athlete).runs.size
	end

	

	def results 
		self.runs.all.order(score: :desc).collect{|x|x.athlete}
	end
end
