class CatPersonalityTestController < ApplicationController

  def new
    puts "SESSSION"
    @answer = session[:answer]
  end

  def create
    puts 'LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL'
    puts params
    puts 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
  
    redirect_to new_cat_personality_test_path
  end

end
