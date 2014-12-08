class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_filter :prepare_params, only: [:edit, :show]

  def index
    if params[:merk_id].present?
      @products = Product.where(merk_id: params[:merk_id])
    else
      @products = Product.all
    end

    @imaging = Imaging.new
    @merks = Merk.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @merks = Merk.all
  end

  def create    
    product = Product.new(product_params)

    if product.save
      notice = "Product berhasil di buat."
    else
      notice = "Product gagal di buat. Hubungi administrator."
    end
    redirect_to products_path, :notice => notice
  end

  def edit
    @merks = Merk.all
  end

  def update
    product = Product.find(params[:id])

    if product.update_attributes(product_params)
      notice = "Product berhasil di update."
    else
      notice = "Product gagal di update. Hubungi administrator."
    end
    redirect_to products_path, :notice => notice
  end

  def destroy
    product = Product.find(params[:id])

    if product.destroy
      notice = "Product berhasil di hapus"
    else
      notice = "Product gagal di hapus. hubungi administrator"
    end
    redirect_to products_path, :notice => notice
  end

  private

  def product_params
    params.require(:product).permit(:name, :merk_id, :image)
  end

  def prepare_params
    @product = Product.find(params[:id])
  end
end
