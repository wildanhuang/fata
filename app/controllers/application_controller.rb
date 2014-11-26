class ApplicationController < ActionController::Base
  before_filter :reload_merk
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def reload_merk
    @merks = Merk.all.order("group_name ASC")
  end
end
