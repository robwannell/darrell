class DarrellController < ApplicationController
  def about
    @content = Page.find(2)
  end

  def issues
    @issues = Issue.friendly.all
  end
  
  def personalreferences
    @personals = Personal.rank(:row_order).all
  end
  
  def reference
    @reference = Personal.find(params[:id])
  end
  
  def support
    @content = Page.find(3)
    @support = Support.new
    @help = ['']
     
  end
  
  
end
