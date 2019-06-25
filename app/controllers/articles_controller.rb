class ArticlesController < ApplicationController
  before_action :js_css
  before_action :admin, only: [:edit, :update, :new, :create]

  def index
    @articles = Article.all
    @articles = [] if @articles.length == 0
  end

  def show
    @article = Article.find_by_id(params[:id])
    @article_comments = ArticleComment.paginate(page: params[:page], per_page: 5 ).order('created_at DESC')
    @article_comment = ArticleComment.new
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.create!(article_params)
    redirect_to article
  end

  def edit
    @article = Article.find_by_id(params[:id])
  end

  def update
    article = Article.find_by_id(params[:id])
    article.update(article_params)
    redirect_to article
  end


  private

  def article_params
    params.require(:article).permit(:title, :image, :article_body)
  end

  def js_css
    @js_css = {css: "article", js: "article"}
  end

  def admin
    unless current_user && current_user.admin?
      flash[:danger] = "How dare you use your guile tactics on us!"
      redirect_to '/articles'
    end
  end

end
