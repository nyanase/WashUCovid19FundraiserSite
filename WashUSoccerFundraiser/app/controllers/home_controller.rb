class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show_team
    @Plans = Plan.all
  end

  def show_players

  end
end
