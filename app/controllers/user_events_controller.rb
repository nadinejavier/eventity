class UserEventsController < ApplicationController
  #   def create 
  #   user_event = UserEvent.new(
  #     user_id: params[:user_id],
  #     event_id: params[:event_id])
  #   if user_event.save
  #     render json: {message: "Successfully joined event!"} 
  #   else
  #     render json: {errors: user_event.errors.full_messages}, status: :bad_request
  #   end
  # end 


  def create
    user_event = UserEvent.new(
      event_id: params["event_id"],
      user_id: params["user_id"]
    )

    if user_event.save
      render json: {message: "You are now attending this event!"}
    else
      render json: {errors: user_event.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
