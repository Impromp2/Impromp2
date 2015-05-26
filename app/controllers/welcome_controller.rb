class WelcomeController < ApplicationController
  def index
  end


  def test
    hash = {message: "hello world"}
    render json: current_user
  end
end