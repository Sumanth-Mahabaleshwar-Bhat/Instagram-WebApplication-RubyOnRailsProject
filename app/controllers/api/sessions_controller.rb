class Api::SessionsController < ApiController
  def new
    render json: SessionsController
  end

  def create
    user = User.find_by(user_name: params["user"]["user_name"]).try(:authenticate, params["user"]["password"])

    if user
      session[:user_id] = user.id
      render json: { status: :created, logged_in: true, user: user }, status: 200
    else
      render json: {error: 'Cannot Login'}, status: 401
    end
  end
end