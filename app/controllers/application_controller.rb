class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def twitter_client
	Twitter::REST::Client.new do |config|
	  config.consumer_key        = "lG9A9gxoPyPC3Rqbut5qMaiF0"
	  config.consumer_secret     = "hw2s50sTGAuiXktV6g2wDerzPl413XmpRQHMXhtYr5IL7clFR6"
	  config.access_token        = "28226407-wt4syUJ9ldwAoagNc4ANU6ocFo2CTPBPqnfRbxHpY"
	  config.access_token_secret = "msp4CUiQJ64Xl1Ub28ywSnH0Q0COzlfgtlkAHko4xcRhe"
	end
end



end
