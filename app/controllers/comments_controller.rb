class CommentsController < ApplicationController
  
  def create
    @user = User.find_by(id:params[:id])
    comment = @user.comment.build(comment_params)
    if comment.save
      flash[:success] = "your comment was uploaded successfully"
      render @user
    else
      flash[:danger] = "failed to upload your comment, Try again"
      render @user
    end
  end
  
  def new
    @comment = Comment.new
  end
  
  def edit
  end
  
  def show
  end
  
  def update
  end
  
  def destroy
  end
  
private 
  def comment_params
    params.require(:comment).permit[:content]
  end
end