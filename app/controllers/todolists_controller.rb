class TodolistsController < ApplicationController
  def new
    # viewへ渡すためのインスタンス変数に空のmodelObjectを生成する
    @list = List.new
  end

  def create
    
    list = List.new(list_params)

    list.save

    redirect_to "/top"

  end

  def index
    @lists = List.all
  end

  private

  def list_params
    params.require(:list). permit(:title, :body)
  end
end


