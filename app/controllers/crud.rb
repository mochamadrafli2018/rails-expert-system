class LoginController < ApplicationController
  def index
    @datas = Data.all.order(created_at: :desc)
  end
  
  def show
    @data = Data.find_by(id: params[:id])
  end
  
  def new
  end
  
  def create
    @data = Data.new(content: params[:content])
    @data.save
    redirect_to("/dashboard")
  end
end
