class EventsController < ApplicationController
  def index
    events = Event.all 
    render json: events
  end
  def create
    event = Event.new(
      title: params[:title],
      address: params[:address],
      description: params[:description],
      complete: false,
      hosted_by: params[:hosted_by],
      start_time: Time.now,
      end_time: Time.now
      )
    if event.save
      render json: event.as_json
    else
      render json: {errors: event.errors.full_messages}, status: :bad_request
    end
  end 

  def show
    event = Event.find(params[:id])
    render json: event.as_json
  end
end
