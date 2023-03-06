class UsersController < ApplicationController
  def create
    user = User.create(user_params)
    if user.valid?
      session[:user_id] = user.id
      render json: user, status: :created
    else
      render json: {
               errors: user.errors.full_messages,
             },
             status: :unprocessable_entity
    end
  end

  def auth
    user = User.find_by(id: session[:user_id])
    if user
      render json: user
    else
      head :see_other
    end
  end

  private

  def user_params
    params.permit(
      :username,
      :password,
      :first_name,
      :last_name,
      :email,
      :password_confirmation,
    )
  end
end
