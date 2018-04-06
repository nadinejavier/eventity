class UsersController < ApplicationController
    def index
      users = User.all
      render json: users
    end

    def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      bio: params[:bio],
      location: params[:location]
    )
      if user.save
        render json: {message: 'User created successfully'}, status: :created
      else
        render json: {errors: user.errors.full_messages}, status: :bad_request
      end
    end

    def show
      @user = User.find_by(id: params[:id].to_i(36))
      @user_sent_invites = @user.invites
      render json: @user, include: [:invites]
    end
end
