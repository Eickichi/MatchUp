class ImagesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @event.images.attach(params[:images])
    redirect_to(event_path(@event))
  end
end
