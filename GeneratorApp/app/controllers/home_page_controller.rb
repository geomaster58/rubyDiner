class HomePageController < ApplicationController
  def home
    @rooms = TheRoom.all
  end
end
