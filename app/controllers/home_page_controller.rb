class HomePageController < ApplicationController
  def index
  	@events = Event.all
  end
end
