class PagesController < ApplicationController
    
  def home
    render layout: 'application'
  end
  
  def devblog
    render layout: 'devblog'
    
  end
  
end