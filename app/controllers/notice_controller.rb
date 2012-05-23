class NoticeController < ApplicationController
  def index
    @title = "Notice"
    @user = current_user
    
    UserMailer.notice_email(@user).deliver
    
  end
end
