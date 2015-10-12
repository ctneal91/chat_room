class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new params.require(:comment).permit(:entry)
    if @comment.save
      redirect_to root_path
    else
      render :new
    end
  end
end
