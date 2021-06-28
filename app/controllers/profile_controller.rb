class ProfileController < ApplicationController
  before_action authorize_user
  def index
    @profiles = policy_scope(Profile).order(created_at: :desc)
    @profiles = Profile.search(params[:query]) if params[:query].present?
    chat_id = current_user.role
    @chatroom = Chatroom.find_by_id(chat_id)
    @message = Message.new
    @profile = Profile.new
  end

  def show
    @profile = Profile.find(params[:id])
    @user = User.new
    chat_id = current_user.chatroom_id
    @chatroom = Chatroom.find_by_id(chat_id)
    @message = Message.new
  end

  def view
  end

  def create
  end

  def destroy
    @profile = Profile.find(params[:id])
    @user = @profile.user
    @profile.destroy
    redirect_to dashboard_path
  end

  def edit
  end

  def update
  end

  private

  def authorize_profile
    authorize @profile
  end

  def profile_params
    params.require(:profile).permit(:photo)
  end
end
