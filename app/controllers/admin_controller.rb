class AdminController < ApplicationController
  def index
    @admin = User.all
  end
end
