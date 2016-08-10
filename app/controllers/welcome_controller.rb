class WelcomeController < ApplicationController
  def index
  	@room = Room.new
  end
end
