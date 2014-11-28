class GroupNamesController < ApplicationController
  before_action :authenticate_user!
  before_filter :prepare_params, only: [:edit, :show]

  def index
    @group_names = GroupName.all
  end

  def show
  end

  def new
    @group_name = GroupName.new
  end

  def create
    group_name = GroupName.new(group_name_params)

    if group_name.save
      notice = "Group name berhasil di buat."
    else
      notice = "Group name gagal di buat. Hubungi administrator."
    end
    redirect_to group_names_path, :notice => notice
  end

  def edit
  end

  def update
    group_name = GroupName.find(params[:id])

    if group_name.update_attributes(group_name_params)
      notice = "Group Name berhasil di update."
    else
      notice = "Group Name gagal di update. Hubungi administrator."
    end
    redirect_to group_names_path, :notice => notice
  end

  def destroy
    group_name = GroupName.find(params[:id])

    if group_name.destroy
      notice = "Group Name berhasil di hapus"
    else
      notice = "Group Name gagal di hapus. hubungi administrator"
    end
    redirect_to group_names_path, :notice => notice
  end

  private

  def group_name_params
    params.require(:group_name).permit(:name, :index)
  end

  def prepare_params
    @group_name = GroupName.find(params[:id])
  end
end
