class Api::V1::UsersController < ApplicationController
  def index()
    render json: ["Index"]
  end
end
