class ListController < ApplicationController
  def index
    @list = policy_scope(List).order(created_at: :desc)
    @list = current_user
    @chatroom = current_user.chatroom
    @message = Message.new
  end

  def show
  end

  def create
    @list = Task.new(task_params)
    @list.user = current_user
    @list.task = @task

    if @list.save
      redirect_to list_path(@list)
    else
      render 'list/show'
    end
  end
  end

  def edit
  end

  def destroy
  end

  private

  def note_params
    params.require(:note).permit(:content, :event_id)
  end

  def authorize_note
    authorize @note
  end
end
