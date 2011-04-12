
class ViewerController < ApplicationController
  include InPlaceEditing
  in_place_edit_for :page, :body
  def show
    @page=Page.find_by_name(params[:name])
    login_required if @page.admin?
  end
    
end
