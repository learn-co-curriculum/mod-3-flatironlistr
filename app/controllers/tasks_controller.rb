class TasksController < ApplicationController
  def index
    @list = List.find(params[:list_id])
    @tasks = @list.tasks
    render json: @tasks
  end


  def show
    @task = Task.find(params[:id])
    render json: @task
  end


  def create
    @user = User.find(params[:user_id])
    @list = List.find(params[:list_id])
    if @user == @list.user

      @task = Task.create(description:params[:description], priority: params[:priority], list: @list)
      render json: @task
    else
      render json: { message: "Error"}
    end
  end

end
