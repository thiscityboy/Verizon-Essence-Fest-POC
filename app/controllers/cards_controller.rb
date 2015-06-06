class CardsController < ApplicationController

	def index
	end

	def form_process
		if params[:mdn].present?
			 res = MsgToolbox.send_message(params[:mdn], nil, 63901)
			 puts "Catapult say: #{res}"
		end
	end

end
