class UserMailer < ActionMailer::Base
  default from: "sender.taro@gmail.com"
  
  def notice_email(user,clients,year,month)
    @user = user
    @year = year
    @month = month
    @clients = clients
    
    mail(:to => user.email_with_name, :subject => "Notice for " + @year + @month)
    
  end
  
end
