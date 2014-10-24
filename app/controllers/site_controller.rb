class SiteController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    if user_signed_in?
      redirect_to site_chat_path
    end
  end

  def chat
    @users = User.where("id != ?", current_user.id)
  end
end
