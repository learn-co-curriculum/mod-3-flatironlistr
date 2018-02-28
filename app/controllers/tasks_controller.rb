class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render json: @tasks
  end


  def show
    @task = Task.find(params[:id])
    render json: @task
  end


  def create
    @list = List.find(params[:list_id])
    @task = Task.create(description:params[:description], priority: params[:description], list: @list)
    render json: @task
  end

end
