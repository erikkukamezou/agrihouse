class DairiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_dairy, only: [:show, :edit, :update, :destroy]
  before_action :login_user, only: [:edit, :destroy, :update]
  # before_action :set_q, only: [:index, :search]
  def index
    # render layout: "sidebar.html.erb"
    # @dairies = Dairy.page(params[:page]).per(10)
    @q = Dairy.ransack(params[:q])
    @dairies = @q.result(distinct: true).page(params[:page]).per(10)
  end

  def new
    @dairy = Dairy.new
  end

  def create
    @dairy = current_user.dairies.build(dairy_params)
    # @dairy = Dairy.new(dairy_params)
    # @dairy.user_id = current_user_id
    if @dairy.save
      # if params[:dairy][:image]
      #   File.binwrite("public/dairy_images/#{@dairy.id}.jpg", params[:dairy][:image].read)
      #   @dairy.update(image: "#{@dairy.id}.jpg" )
      # else
      #   @dairy.update(image: "default.jpg" )
      # end



    redirect_to dairies_path, notice: "新規作成しました"
    else
      render :new
    end
  end

  def show
    # @dairy = Dairy.find(params[:id])
    @comment = Comment.new
    @comments =@dairy.comments.includes(:user)
    # @comment = @dairy.comments.order(created_at: :desc)
  end

  def edit
    # @dairy = Dairy.find(params[:id])
  end

  def update
    # @dairy = Dairy.find(params[:id])
    if @dairy.update(dairy_params)
      # if params[:dairy][:image]
      #   File.binwrite("public/dairy_images/#{@dairy.id}.jpg", params[:dairy][:image].read)
      #   @dairy.update(image: "#{@dairy.id}.jpg" )
      # end
      redirect_to dairies_path, notice: "編集したよ"
    else
      render :edit
    end
  end

  def destroy
    @dairy.destroy
    redirect_to dairies_path, notice: "削除しました"
  end

  # def search
  #   @results = @q.result
  # end

  private

  def login_user
    unless Dairy.find(params[:id]).user.id.to_i == current_user.id
        redirect_to dairies_path(current_user)
    end
  end
  #
  # def set_q
  #   @q = Dairy.ransack(params[:q])
  # end

  def dairy_params
    params.require(:dairy).permit(:date, :title, :content, :image)
  end

  def set_dairy
    @dairy = Dairy.find(params[:id])
  end
end
