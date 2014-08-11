class TasksController < ApplicationController

  def index
    @tasks = Task.order(:date)
  end

  def new_task
    @task_lists = TaskList.find(params[:id])
    @task = Task.new
    @task.list_id = params[:id]
  end

  def create

    @task_lists = TaskList.find(params[:id])
    @tasks = Task.new


    @tasks = Task.create(
                          description: params[:task][:description],
                          list_id: params[:id],
                          date: Date.new(params[:date]['year'].to_i, params[:date]['month'].to_i, params[:date]['day'].to_i)
    )





    if @tasks.save
      redirect_to '/'
    else
      render :new_task
  end


end
end

