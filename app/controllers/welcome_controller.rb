class WelcomeController < ApplicationController
  def index
    @content = Page.find(1)
    @personal = Personal.order("RAND()").limit(2)
    @first = Testamony.first
  end
end
