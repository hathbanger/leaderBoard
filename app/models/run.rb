class Run < ActiveRecord::Base
  belongs_to :athlete
  belongs_to :event
end
