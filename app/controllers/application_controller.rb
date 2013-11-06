class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  def search_game
  	gb = GiantBomb::Search.new("77dcb9ebcdb6c045950580d993599a609aaee78e")
  	@result = gb.find_game(" SEARCH RESULT")
  end

end
