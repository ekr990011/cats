class CatPersonalityTestController < ApplicationController
  before_action :js_css

  include Result

  def new
    puts "SESSSION"
    @answer = session[:answer]
  end

  def create
    #somethingfoo(params)
    catNumber = catPersonality(params)
    # puts "cat number"
    # puts catNumber

    redirect_to cat_personality_test_path(catNumber)
    #redirect_to  cat_personality_test_index_path
  end

  def show
    @catPersonality  = CatPersonality.find_by(catID: params[:id])

    puts CatPersonality.find_by(catID: params[:id]).name
    puts @catPersonality.name
  end

  def index
    @catPersonality = CatPersonality.all
  end


  private

  def js_css
    @js_css = {css: "catPersonality", js: "catPersonality"}
  end

end
