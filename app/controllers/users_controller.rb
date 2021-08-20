class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
#
  def index
    # @user = current_user
    @event = Event.last(1)
    @dairy = Dairy.last(1)
    @cost = Cost.last(1)
    @manufacture = Manufacture.last(1)
  end

  def show
    @user = current_user
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to users_path, "更新したよ"
    else
      render :edit
    end
  end

  private
  def set_user
    user = User.find(params[:id])
  end


#
# private
#
#   def set_user
#     # @user = User.find([:id])
#   end
end
