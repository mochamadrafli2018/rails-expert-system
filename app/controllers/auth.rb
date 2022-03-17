class LoginController < ApplicationController
  def index
    # sorting user data by created_at
    @users = User.all.order(created_at: :desc)
  end
  
  def login
    @user = User.find_by(id: params[:id])
    if user === null
  end

  def register
    @user = User.find_by(id: params[:id])
    if @user == null
      @newuser = User.new(
          name: params[:name],
          email: params[:email],
          password: params[:password],
          gender: params[:gender],
          role: params[:role]
        )
      if @newuser.save
        render(json: {message: @newuser.id, status: :ok)
        # redirect_to("/posts/index")
      else
        render(json: {message: "fail save new data", status: :ok)
      end
    else
      render(json: {message: "data already exist", status: :ok)
    end
  end

  def verify
  end

end
