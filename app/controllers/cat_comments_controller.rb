class CatCommentsController < ApplicationController

  def create
    cat = Cat.find_by_id(cat_comment_params[:cat_id])
    unless cat_comment_params[:body] == ""
      CatComment.create(cat_comment_params)
    end
    redirect_to cat
  end


  private

  def cat_comment_params
    params.require(:cat_comment).permit(:body, :cat_id)
  end
end
