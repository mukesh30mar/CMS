 require 'authenticated_system.rb'
 require 'acts_as_textiled.rb'
 require  'rubygems'
  class ApplicationController < ActionController::Base
  protect_from_forgery

  include AuthenticatedSystem
  
  before_filter :get_pages_for_tabs

  def get_pages_for_tabs
      if logged_in?
   #   @tabs=Page.find(:all)
      @tabs=Page.find_main
     else
       #@tabs=Page.find(:all,:conditions=> ["admin !=?", true])
       @tabs=Page.find_main_public
     end
   end
end
  