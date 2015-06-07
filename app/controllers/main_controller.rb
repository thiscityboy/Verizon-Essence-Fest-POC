class MainController < ApplicationController
	
	skip_before_action :verify_authenticity_token

  def index
  end

	def enter
			 res = MsgToolbox.send_sms_message(nil, params[:mdn], @text, 63901)
			 @text = "thank you"
			 puts "Catapult say: #{res}"
			 redirect_to "/thanks"
	end

  def social_id
 	 	@osp_campaign_id = ENV['OSP_CAMPAIGN_ID']
  end

end
