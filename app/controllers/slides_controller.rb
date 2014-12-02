class SlidesController < ApplicationController
  before_action :authenticate_user!
  before_filter :prepare_params, only: [:edit, :show]

  def index
    @slides = SlideShow.all
  end

  def show
  end

  def new
    @slide = SlideShow.new
  end

  def create
    slide = SlideShow.new(slide_params)

    if slide.save
      notice = "slide berhasil di buat."
    else
      notice = "slide gagal di buat. Hubungi administrator."
    end
    redirect_to slides_path, :notice => notice
  end

  def edit
  end

  def update
    slide = SlideShow.find(params[:id])

    if slide.update_attributes(slide_params)
      notice = "slide berhasil di update."
    else
      notice = "slide gagal di update. Hubungi administrator."
    end
    redirect_to slides_path, :notice => notice
  end

  def destroy
    slide = SlideShow.find(params[:id])

    if slide.destroy
      notice = "slide berhasil di hapus"
    else
      notice = "slide gagal di hapus. hubungi administrator"
    end
    redirect_to slides_path, :notice => notice
  end

  private

  def slide_params
    params.require(:slide_show).permit(:image, :index)
  end

  def prepare_params
    @slide = SlideShow.find(params[:id])
	end
end
