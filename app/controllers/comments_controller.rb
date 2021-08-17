class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
      @dairy = Dairy.find(params[:dairy_id])
      # @comment = current_user.comments.build(comment_params)
      @comment = current_user.comments.new(comment_params)
      @comment.dairy_id = @dairy.id
      if @comment.save
        render :dairy_comments, notice: "コメント作成したよ"
      else
        # render :dairy_path(@dairy)
        render 'dairies/show'
      end
   end

  # def destroy
  #     # @comment = Comment.find(params[:id])
  #     # @comment.destroy
  #     Comment.find_by(id: params[:id], dairy_id: params[:dairy_id]).destroy
  #     redirect_to dairies_path(@dairy), notice: "コメント削除4したよ"
  # end

  private
  def comment_params
      params.require(:comment).permit(:content, :dairy_id, :user_id)
  end
end
