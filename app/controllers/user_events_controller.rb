class UserEventsController < ApplicationController
    def create 
    user_event = UserEvent.new(
      user_id: current_user.id,
      event_id: params[:event_id])
    if user_event.save
      render json: {message: "Successfully joined event!"} 
    else
      render json: {errors: user_event.errors.full_messages}, status: :bad_request
    end
  end 
end
