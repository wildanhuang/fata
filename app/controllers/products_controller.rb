class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def index
  end

  def new
    
  end
end
