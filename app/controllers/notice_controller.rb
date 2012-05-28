class NoticeController < ApplicationController
  def index
    @title = "Notice"
    date = Date.today

    User.all.each {|user|
      renewal_month = (date + user.notice_me).strftime("%Y%m").to_i

      UserMailer.notice_email(user,renewal_month).deliver if user.need_to_notice?(renewal_month)
      user.update_attribute(:last_notice, renewal_month)

    }

  end
end
