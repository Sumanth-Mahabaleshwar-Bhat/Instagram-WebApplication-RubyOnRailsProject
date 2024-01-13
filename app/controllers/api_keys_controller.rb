class ApiKeysController < ApplicationController
  include ApiKeyAuthenticatable

  # Require API key authentication for index
  prepend_before_action :authenticate_with_api_key!, only: [:index]

  # Optional API key authentication for logout
  prepend_before_action :authenticate_with_api_key, only: [:destroy]

  def index
    render json: current_bearer.api_keys
  end

  def create
    user = User.find_by(user_name: params[:user][:user_name])
    password = params[:user][:password]

    if user && user.authenticate(password)
      api_key = user.api_keys.create! token: SecureRandom.hex
      render json: api_key, status: :created and return
    end
    render status: :unauthorized
  end

  def destroy
    current_api_key&.destroy
  end
end
