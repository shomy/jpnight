class OutlineInfoController < ApplicationController

  def help
    @g_infos = GInfo.all
    @g_info = GInfo.find_by(id: params[:id])
  end

  def company
    @g_infos = GInfo.all
    @g_info = GInfo.find_by(id: params[:id])
  end

  def contact
    @g_infos = GInfo.all
    @g_info = GInfo.find_by(id: params[:id])
  end

  def our_philosophy
    @g_infos = GInfo.all
    @g_info = GInfo.find_by(id: params[:id])
  end

  def team
    @g_infos = GInfo.all
    @g_info = GInfo.find_by(id: params[:id])
  end

  def code
    @g_infos = GInfo.all
    @g_info = GInfo.find_by(id: params[:id])
  end

  def policy
    @g_infos = GInfo.all
    @g_info = GInfo.find_by(id: params[:id])
  end



end
