class OnboardingController < ApplicationController
  def index
    @onboarding = policy_scope(Onboarding).order(created_at: :desc)
    @chatroom = current_user.chatroom
    @message = Message.new
  end

  def show
    @onboarding = Onboarding.find(params[:id])
    @chatroom = current_user.chatroom
    @message = Message.new
  end

  def edit
  end

  def destroy
    @onboarding = Onboarding.find(params[:id])
    @user = @onboarding.user
    @onboarding.destroy
    redirect_to dashboard_path
  end

  private

  def authorize_onboarding
    authorize @onboarding
  end

end
