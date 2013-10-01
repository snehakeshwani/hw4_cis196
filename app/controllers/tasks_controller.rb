class TasksController < ApplicationController
  def task_params
      params.require(:task).permit(:work,:course,:dueday)
  end
  
  def new
      @task = Task.new
  end

  def index
      @tasks=Task.all
  end
  
  def create
      @task = Task.new(task_params)
      if @task.save
          redirect_to tasks_path
      else
          render 'new'
      end
  end
end
