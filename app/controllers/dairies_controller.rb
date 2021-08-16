class DairiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_dairy, only: [:show, :edit, :update, :destroy]
  def index
    @dairies = Dairy.all
  end

  def new
    @dairy = Dairy.new
  end

  def create
    @dairy = current_user.dairies.build(dairy_params)
    # @dairy = Dairy.new(dairy_params)
    # @dairy.user_id = current_user_id
    if @dairy.save
      if params[:dairy][:image]
        File.binwrite("public/dairy_images/#{@dairy.id}.jpg", params[:dairy][:image].read)
        @dairy.update(image: "#{@dairy.id}.jpg" )
      else
        @dairy.update(image: "default.jpg" )
      end



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
      if params[:dairy][:image]
        File.binwrite("public/dairy_images/#{@dairy.id}.jpg", params[:dairy][:image].read)
        @dairy.update(image: "#{@dairy.id}.jpg" )
      end
      redirect_to dairies_path, notice: "編集したよ"
    else
      render :edit
    end
  end

  def destroy
    redirect_to dairies_path, notice: "削除しました"
  end

  private
  def dairy_params
    params.require(:dairy).permit(:title, :content, :image)
  end

  def set_dairy
    @dairy = Dairy.find(params[:id])
  end
end
