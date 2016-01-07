class DarrellController < ApplicationController
  def about
    @content = Page.find(2)
  end

  def issues
    @issues = Issue.friendly.all
  end
  
  def support
    @content = Page.find(3)
    @support = Support.new
    @help = ['Add my name as an endorser', 'Host a "Meet-&-Greet" for Mariko', 'Make phone calls for Mariko','Walk precincts with Mariko', 'Display and/or deliver a lawn sign for Mariko', 'Help Get-Out-the-Vote']
     
  end
  
  
end
