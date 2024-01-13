class InstagramUserProfilesController < ApplicationController
  before_action :set_instagram_user_profile, only: %i[ show edit update destroy ]

  # GET /instagram_user_profiles or /instagram_user_profiles.json
  def index
    @instagram_user_profiles = InstagramUserProfile.all
  end

  # GET /instagram_user_profiles/1 or /instagram_user_profiles/1.json
  def show
  end

  # GET /instagram_user_profiles/new
  def new
    @instagram_user_profile = InstagramUserProfile.new
  end

  # GET /instagram_user_profiles/1/edit
  def edit
  end

  # POST /instagram_user_profiles or /instagram_user_profiles.json
  def create
    @instagram_user_profile = InstagramUserProfile.new(instagram_user_profile_params)

    respond_to do |format|
      if @instagram_user_profile.save
        format.html { redirect_to instagram_user_profile_url(@instagram_user_profile), notice: "Instagram user profile was successfully created." }
        format.json { render :show, status: :created, location: @instagram_user_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @instagram_user_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instagram_user_profiles/1 or /instagram_user_profiles/1.json
  def update
    respond_to do |format|
      if @instagram_user_profile.update(instagram_user_profile_params)
        format.html { redirect_to instagram_user_profile_url(@instagram_user_profile), notice: "Instagram user profile was successfully updated." }
        format.json { render :show, status: :ok, location: @instagram_user_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @instagram_user_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instagram_user_profiles/1 or /instagram_user_profiles/1.json
  def destroy
    @instagram_user_profile.destroy

    respond_to do |format|
      format.html { redirect_to instagram_user_profiles_url, notice: "Instagram user profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instagram_user_profile
      @instagram_user_profile = InstagramUserProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def instagram_user_profile_params
      params.require(:instagram_user_profile).permit(:avatar, :bio)
    end
end
