class CommentsController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_comment, only: [:create, :destroy]
  def create
      @dairy = Dairy.find(params[:dairy_id])
      # @comment = current_user.comments.build(comment_params)
      # @comment = current_user.comments.new(comment_params)
      # @comment.dairy_id = @dairy.id
      @comment = @dairy.comments.build(comment_params)
      @comment.user_id = current_user.id
      if @comment.save
        redirect_to dairy_path(@dairy), notice: "コメントがきたよ"
      # else
      #   # render :dairy_path(@dairy)
      #   render 'dairies/show'
      end
   end

  def destroy
      @dairy = Dairy.find(params[:dairy_id])
      # @comment = Comment.find(params[:id])
      @comment = @dairy.comments.find(params[:id])
      if @comment.destroy
      # Comment.find_by(id: params[:id], dairy_id: params[:dairy_id]).destroy
      redirect_to dairy_path(@dairy), notice: "コメント削除されたよ"
      end
  end

  private
  def comment_params
      params.require(:comment).permit(:comment_content)
  end

  # def set_comment
  #   comment = Comment.find(params[:id])
  # end
end
