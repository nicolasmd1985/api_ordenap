class Api::V1::UsersController < ApplicationController
  def create
    if !params[:auth]
      render json: {error: "Auth param is missing"}
    else
      @user = User.from_omniauth(params[:auth])
      @token = @user.tokens.create()
      render "api/v1/users/show"
    end
  end
end
