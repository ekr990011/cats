class ArticleCommentsController < ApplicationController

  def create
    article = Article.find_by_id(article_comment_params[:article_id])
    ArticleComment.create(article_comment_params)
    redirect_to article
  end


  private

  def article_comment_params
    params.require(:article_comment).permit(:body, :article_id)
  end
end
