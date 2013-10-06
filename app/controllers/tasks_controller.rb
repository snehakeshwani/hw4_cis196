class TasksController < ApplicationController

  def task_params
      params.require(:task).permit(:work,:course,:dueday,:id)
  end
  
  def new
      @task = Task.new
  end

  def index
      @tasks=Task.all
  end
  
  def show
      @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      redirect_to task_path(@task.id)
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
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
