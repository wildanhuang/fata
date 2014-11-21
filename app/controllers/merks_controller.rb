class MerksController < ApplicationController
  before_action :authenticate_user!

  def index
    @merks = Merk.all
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

  private

  def merk_params
    params.require(:merk).permit(:name, :background)
  end
end
