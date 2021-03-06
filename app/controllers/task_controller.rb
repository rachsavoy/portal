class TaskController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def destroy
    @task = Task.find(params[:id])
    @user = @Task.user
    @task.destroy
    redirect_to dashboard_path
  end

  def create
  end

  private

  def task_params
    params.require(:task).permit(:content, :users)
  end

  def authorize_task
    authorize @task
  end
end
