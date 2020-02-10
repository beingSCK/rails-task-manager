class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  # TO DO:
  #  other basic CRUD actions
end
