class CommentsController < ApplicationController
  
  def create
    user = User.find(params[:commented_user])
    comment = user.comments.build(comment_params)
    comment.user = current_user
    comment.portfolio_id = user.portfolio.id
    if comment.save
      flash[:success] = "your comment was uploaded successfully"
      redirect_to user
    else
      flash[:danger] = "failed to upload your comment, Try again"
      redirect_to users_path
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
    params.require(:comment).permit(:content)
  end
end