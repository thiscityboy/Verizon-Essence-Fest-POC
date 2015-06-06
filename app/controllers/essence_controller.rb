class EssenceController < ApplicationController
  def index
  	@osp_campaign_id = ENV['OSP_CAMPAIGN_ID']
  end

  def sandbox
    @osp_campaign_id = ENV['OSP_CAMPAIGN_ID']
   end 	
end
