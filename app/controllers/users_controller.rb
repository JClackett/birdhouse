class UsersController < ApplicationController
before_action :set_room

  def new
    @user = User.new
  end

  def create
    @user = @room.users.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      cookies.signed[:user_id] = session[:user_id]
      redirect_to @room
    else
      @errors = @user.errors.full_messages
      render "/users/new"
    end
  end

  private

    def set_room
      @room = Room.friendly.find(params[:room_id])
    end

  def user_params
    params.require(:user).permit(:name, :room_id)
  end

end