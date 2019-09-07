class UsersController < ApplicationController
  before_action :authenticate_user!, :only => [:show]

  def new_session_path *args
  new_user_session_path *args
  end

  def index
    @users=User.all
    @g_infos= GInfo.all
    @g_infos = GInfo.paginate(page: params[:page], per_page: 9)
  end

  def show
    @user=User.find(params[:id])
    @currentUserEntry=Entry.where(user_id: current_user.id)
    @userEntry=Entry.where(user_id: @user.id)
    if @user.id == current_user.id
    else
      @currentUserEntry.each do |cu|
        @userEntry.each do |u|
          if cu.room_id == u.room_id then
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @entry = Entry.new
      end
    end
  end

  

end
