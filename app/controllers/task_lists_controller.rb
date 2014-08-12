class TaskListsController < ApplicationController

  def index
    @task_lists = TaskList.order(:name)

  end

  def new
    @task_lists = TaskList.new
  end

  def create
    @task_lists = TaskList.new
    @task_lists.name = params[:task_list][:name]

     if @task_lists.save
    redirect_to '/'
     else
       render :new

     end
  end

  def edit
    @task_lists = TaskList.find(params[:id])
  end



  def update
    @task_lists = TaskList.find(params[:id])
    @task_lists.name = params[:task_list][:name]
    @task_lists.save
    redirect_to '/'
  end

  def completed
    @task_list = TaskList.find(params[:id])
  end

end