class TasksController < ApplicationController
  def new
      @task = Task.new
  end

  def index
      @tasks=Task.all
  end
  
  def create
      @task = Task.new(params[:task])
      if @task.save
          redirect_to tasks_path
      else
          render 'new'
      end
  end
end
