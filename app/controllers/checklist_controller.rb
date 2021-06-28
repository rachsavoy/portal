class ChecklistController < ApplicationController
  before_action
  def show
    @checklist = Event.find(params[:id])
    @user = policy_scope(User).sample
    @chatroom = current_user.chatroom
    @message = Message.new
  end

  def edit
  end

  def index
    @checklists = policy_scope(Event).order(created_at: :desc)
  end

  def update
  end

  def destroy
  end
end
