class UserMailer < ActionMailer::Base
  default from: "msyskd@gmail.com"
  
  def notice_email(user)
    @user = user
    
    mail(:to => user.email_with_name, :subject => "hello notice_mail" )
    
  end
  
end
