class HomeController < ApplicationController
	def index
		@closestParkings = Listing.closest.chronological.active.paginate(:page => params[:page]).per_page(10)
  	
    end

end
