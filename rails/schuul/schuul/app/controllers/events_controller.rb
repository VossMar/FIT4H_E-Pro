class EventsController < ApplicationController
	
	def index
		@events = %w(Arran Laphrogi Lagavulin)
	end

end
