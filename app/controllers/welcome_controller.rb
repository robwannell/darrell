class WelcomeController < ApplicationController
  def index
    @content = Page.find(1)
    @personal = Personal.order("RAND()").limit(2)
    @first = Testamony.first
    @title = "Welcome"
    @description = "Darrell Steinberg, candidate for Sacramento Mayor 2016"
  end
end
