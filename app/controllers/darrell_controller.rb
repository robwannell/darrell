class DarrellController < ApplicationController
  def about
    @content = Page.find(2)
    @title = "About Darrell"
    @description = "Darrell Steinberg is one of Sacramento’s most accomplished public servants, serving the Sacramento community for over 20 years"
  end

  def issues
    @issues = Issue.friendly.all
  end
  
  def personalreferences
    @personals = Personal.rank(:row_order).all
    @title = "Personal References for Darrell Steinberg"
    @description = "Personal references for Darrell Steinberg for Sacramento Mayor"
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
