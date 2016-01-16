class AdminController < ApplicationController
  before_filter :authorize
  def index
    @admin = User.all
  end
end
