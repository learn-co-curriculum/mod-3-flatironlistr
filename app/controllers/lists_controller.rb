class ListsController < ApplicationController

  def index
    @lists = List.all
    render json: @lists
  end

  def show
    @list = List.find(params[:id])
    render json: @list
  end

  def create
    @user = User.find(params[:user_id])
    @list = List.create(title: params[:title], user:@user)
    render json: @list
  end

end
