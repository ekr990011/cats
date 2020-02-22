class ArticlesController < ApplicationController
  before_action :js_css
  before_action :admin, only: [:edit, :update, :new, :create]

  # def index
  #   @articles = Article.paginate(page: params[:page], per_page: 1 ).order('created_at DESC')
  #   @articles = [] if @articles.length == 0
  # end

  def show
    #@article = Article.find_by_id(params[:id])
    @article = Article.friendly.find(params[:id])
    @article_comments = ArticleComment.paginate(page: params[:page], per_page: 5).order('created_at DESC')
    @article_comment = ArticleComment.new
    @twitterTitle = @article.title
    @twitterURL = "https://www.felinesfancy.com/articles/#{@article.slug}"
    @twitterImage = @article.image
    @twitterDescription = @article.short_description
    @publication_date = "#{@article.created_at.year}-#{@article.created_at.month}-#{@article.created_at.day}"
    @date_modified = "#{@article.updated_at.year}-#{@article.updated_at.month}-#{@article.updated_at.day}"
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.create!(article_params)
    redirect_to article
  end

  def edit
    @article = Article.friendly.find(params[:id])
  end

  def update
    #article = Article.find_by_id(params[:id])
    article = Article.friendly.find(params[:id])
    article.update(article_params)
    redirect_to article
  end


  private

  def article_params
    params.require(:article).permit(:title, :image, :article_body, :short_description, :slug)
  end

  def js_css
    @js_css = {css: "article", js: "article"}
  end

  def admin
    unless current_user && current_user.admin?
      flash[:danger] = "How dare you use your guile tactics on us!"
      redirect_to '/cats'
    end
  end

end
