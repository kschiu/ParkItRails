class HomeController < ApplicationController
	def index
		@closestListings = Listing.closest.chronological.active.paginate(:page => params[:page]).per_page(10)
  	
    end

end
