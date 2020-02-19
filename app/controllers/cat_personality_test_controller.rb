class CatPersonalityTestController < ApplicationController
  before_action :js_css

  include Result
  include Jsonld

  def new
    puts "SESSSION"
    @answer = session[:answer]
    json_ld('Cat Personality Test', 'media/images/catPersonality/qAmBobtailHead.jpg',
      '2019-12-15 22:18:04 UTC', '2019-12-15 22:18:04 UTC', new_cat_personality_test_path,
      'Find out your cat personality with this test!')
  end

  def create
    #somethingfoo(params)
    catNumber = catPersonality(params)
    #redirect_to new_cat_personality_test_path
    # puts "cat number"
    # puts catNumber
    catResult  = CatPersonality.find_by(catID: catNumber)

    redirect_to cat_personality_test_path(catResult)
    #redirect_to  cat_personality_test_index_path
  end

  def show
    @catPersonality  = CatPersonality.friendly.find(params[:id])
    json_ld(@catPersonality.name + " Personality",
      'media/images/catPersonality/' + @catPersonality.image,
      @catPersonality.created_at, @catPersonality.updated_at,
      cat_personality_test_path(@catPersonality.slug),
      @catPersonality.personality)
  end

  def index
    @catPersonality = CatPersonality.all
    json_ld('Cat Personalities', 'media/images/catPersonality/qAmBobtailHead.jpg',
      '2019-12-15 22:18:04 UTC', '2019-12-15 22:18:04 UTC', cat_personality_test_index_path,
      'Check out all of the other cat personalities!')
  end


  private

  def js_css
    @js_css = {css: "catPersonality", js: "catPersonality"}
  end

end
