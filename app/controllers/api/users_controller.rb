class Api::UsersController < Api::Base
  def show
    user = User.find(params[:id])

    render json: Users::UserResource.new(user)
  end
end
