class NoticeController < ApplicationController
  def index
    @title = "Notice"
    date = Date.today

    User.all.each {|user|
      renewal_month = (date + user.notice_me).strftime("%Y%m").to_i
      year = renewal_month.to_s[0..3]
      month = renewal_month.to_s[4..5]

      clients = Client.notice_to(user.id).renewal_on_month1 if month == "01"
      clients = Client.notice_to(user.id).renewal_on_month2 if month == "02"
      clients = Client.notice_to(user.id).renewal_on_month3 if month == "03"
      clients = Client.notice_to(user.id).renewal_on_month4 if month == "04"
      clients = Client.notice_to(user.id).renewal_on_month5 if month == "05"
      clients = Client.notice_to(user.id).renewal_on_month6 if month == "06"
      clients = Client.notice_to(user.id).renewal_on_month7 if month == "07"
      clients = Client.notice_to(user.id).renewal_on_month8 if month == "08"
      clients = Client.notice_to(user.id).renewal_on_month9 if month == "09"
      clients = Client.notice_to(user.id).renewal_on_month10 if month == "10"
      clients = Client.notice_to(user.id).renewal_on_month11 if month == "11"
      clients = Client.notice_to(user.id).renewal_on_month12 if month == "12"

      UserMailer.notice_email(user,clients,year,month).deliver if user.need_to_notice?(renewal_month) and clients.count > 0
      user.update_attribute(:last_notice, renewal_month)

    }

  end
end
