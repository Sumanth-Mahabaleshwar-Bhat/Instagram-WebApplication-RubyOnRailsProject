class Api::InstagramUserProfilesController < ApiController
  def index
    render json: InstagramUserProfile.all
  end

  def show
    instagram_user_profile = InstagramUserProfile.find_by(id: params[:id])
    if instagram_user_profile
      render json: instagram_user_profile,status: 200
    else
      render json: { error: 'Profile not found'}, status: 404
    end
  end

  def destroy
    InstagramUserProfile.destroy(id: params[:id])
    render :show, status: :ok
  end
end