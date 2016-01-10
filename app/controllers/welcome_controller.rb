class WelcomeController < ApplicationController
  def index
    @content = Page.find(1)
    @testamonies = Testamony.all
    @first = Testamony.first
  end
end
