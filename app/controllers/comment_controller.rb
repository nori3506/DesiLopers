class CommentController < ApplicationController
  def index
  end
  
  def create
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