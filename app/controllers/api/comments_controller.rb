class Api::CommentsController < ApplicationController
    before_action :authenticate_user!

    def create
      @comment = Comment.new params.require(:comment).permit(:entry)

      @comment.room = Room.find params[:id]
      @comment.user = @current_user
      if @comment.save
        redirect_to root_path
      else
        render :new
      end
    end
end
