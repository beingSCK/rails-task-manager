class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id].to_i)
  end

  def new; end

  def create
    new_task = Task.new(task_params)
    new_task.save

    redirect_to tasks_path(new_task)
  end

  # TO DO:
  #  other basic CRUD actions

  def edit
    @task = Task.find(params[:id].to_i)

  end

  def update
    @task = Task.find(params[:id].to_i)
    @task.update(task_params)
    redirect_to task_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
