class LibraryController < ApplicationController
  before_action :get_session_user

  def index

  end

  def delete
    medium_id = params[:medium_id];
    if Medium.exists?(medium_id)
      m = Medium.find(medium_id)
      m.destroy
    end

    redirect_to :action => 'index'
  end


  private

  #TODO get user from session
  def get_session_user
    @user = User.first
  end

end
