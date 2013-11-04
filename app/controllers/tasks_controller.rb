class TasksController < ApplicationController
  def task_params
      params.require(:task).permit(:work,:course,:dueday, :email, :user_id)
  end
  
  def show
    @task = Task.find(params[:id])
    if current_user != nil
      if (@task.user_id == current_user.id)
        @name = current_user.name
      else
        @name = "can't show username due to privacy concerns"
      end
    else
      @name = "can't show username due to privacy concerns"
    end
  end
  
  def edit
      @task = Task.find(params[:id])
  end
  
  def new
      @task = Task.new
  end

  def index
    if current_user
      @tasks = Task.where(user_id: current_user)
    else
      @tasks=Task.all
    end
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
        Notifications.new_task(@task).deliver
        redirect_to tasks_path
      else
        render 'new'
      end
  end
end
