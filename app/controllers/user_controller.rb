class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_params)
    if @user.save
      flash[:notice] = 'Successfully created user.'

      redirect_to user_path
    else
      render :new
    end
  end

  def delete
  end

  def update
  end

  private

  def allowed_params
    params.require(:user).permit(:name, :cpf, :email)
  end

end

