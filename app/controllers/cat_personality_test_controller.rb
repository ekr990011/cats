class CatPersonalityTestController < ApplicationController

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
  end

  def show
    CatPersonality.find(params[:id])
  end

end
