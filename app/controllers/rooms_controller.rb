class RoomsController < ApplicationController
	before_action :set_room, only: [:show, :edit, :update, :destroy]
	before_action :verify_logged_in, only: :show

	# GET /rooms/1
	def show
		@messages = @room.messages
		@message= Message.new
	end	

	# GET /rooms/new
	def new
		@room = Room.new
	end

	# POST /rooms
	def create
		@room = Room.new(room_params)

		if @room.save
			unless !!session[:user_id]
				redirect_to new_room_user_path(@room) , notice: 'You must be logged in to view that page'
			    
			else
				redirect_to @room, notice: 'Room was successfully created.'
			end
		else
			redirect_to root_path, notice: 'Try again!'
		end
	end

	# DELETE /rooms/1
	def destroy
		@room.destroy
		root_path
	end


	def search

		begin
			@room = Room.friendly.find(params["query"])
			redirect_to @room
		rescue ActiveRecord::RecordNotFound
			redirect_to root_path, notice: 'No room found'
		end
	end

	private

	# Use callbacks to share common setup or constraints between actions.
	def set_room
		@room = Room.friendly.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def room_params
		params.require(:room).permit(:name, :slug)
	end
end
