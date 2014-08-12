class TasksController < ApplicationController

  def index
    @tasks = Task.order(:date)
  end

  def new_task
    @task_lists = TaskList.find(params[:id])
    @task = Task.new
    @task.task_list_id = params[:id]
  end

  def create

    @task_lists = TaskList.find(params[:id])
    @tasks = Task.new


    @tasks = Task.create(
                          description: params[:task][:description],
                          task_list_id: params[:id],
                          date: Date.new(params[:date]['date(1i)'].to_i, params[:date]['date(2i)'].to_i, params[:date]['date(3i)'].to_i)
    )
    if @tasks.save
      redirect_to '/'
    else
      render :new_task
    end

  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice] = "Task was deleted successfully!"
    redirect_to '/'

  end

  def edit
    @task = Task.find(params[:id])
    @task.update(
      complete: true
    )
    redirect_to '/'

  end
end

