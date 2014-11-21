class MerksController < ApplicationController
  before_action :authenticate_user!
  before_filter :prepare_params, only: [:edit, :show]

  def index
    @merks = Merk.all
  end

  def show
  end

  def new
    @merk = Merk.new
  end

  def create
    merk = Merk.new(merk_params)

    if merk.save
      notice = "Merk berhasil di buat."
    else
      notice = "Merk gagal di buat. Hubungi administrator."
    end
    redirect_to merks_path, :notice => notice
  end

  def edit
  end

  def update
    merk = Merk.find(params[:id])

    if merk.update_attributes(merk_params)
      notice = "Merk berhasil di update."
    else
      notice = "Merk gagal di update. Hubungi administrator."
    end
    redirect_to merks_path, :notice => notice
  end

  def destroy
    merk = Merk.find(params[:id])

    if merk.destroy
      notice = "Merk berhasil di hapus"
    else
      notice = "Merk gagal di hapus. hubungi administrator"
    end
    redirect_to merks_path, :notice => notice
  end

  private

  def merk_params
    params.require(:merk).permit(:name, :background)
  end

  def prepare_params
    @merk = Merk.find(params[:id])
  end
end
