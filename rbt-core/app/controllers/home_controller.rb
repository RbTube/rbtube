class HomeController < ApplicationController
  respond_to :json

  def index
    render json: {
      message: "Hello world!"
    }
  end
end