class CatPersonalityTestController < ApplicationController

  include Result

  def new
    puts "SESSSION"
    @answer = session[:answer]
  end

  def create
    #somethingfoo(params)
    catNumber = catPersonality(params)
    puts "cat number"
    puts catNumber

    redirect_to new_cat_personality_test_path
  end

end
