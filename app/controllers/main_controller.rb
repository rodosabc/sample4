class MainController < ApplicationController
  def index
    @holidays = Holiday.all
  end
end