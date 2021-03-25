class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]
  before_action :user_confirmation, only: %i[edit update destroy]
  def index
    @tasks = Task.order('created_at DESC')
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render :edit
    end
  end

  def destroy
    if @task.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :matter, :scheduled_date, :completion_date, :status_id, :progress_id, :flag_id,
                                 :supplement).merge(user_id: current_user.id)
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def user_confirmation
    redirect_to root_path if current_user != @task.user
  end
end
