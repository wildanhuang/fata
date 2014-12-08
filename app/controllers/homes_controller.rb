class HomesController < ApplicationController
  def index
  end

  def upload_image
  	imaging = Imaging.where(name: "background").first

  	if imaging
  		imaging.update_attributes(imaging_params)
  	else
	  	imaging = Imaging.new(imaging_params)
	  	imaging.name = "background"
  	end

  	if imaging.save
      notice = "Upload berhasil."
    else
      notice = "Upload gagal. Hubungi administrator."
    end
    redirect_to products_path, :notice => notice
  end

  private

  def imaging_params
    params.require(:imaging).permit(:name, :image)
  end
end
