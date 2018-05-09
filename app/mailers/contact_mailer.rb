class ContactMailer < ApplicationMailer
    # default to: current_user.email
  
    def send_contact_email(user_info)
      email = ENV.fetch("MAILGUN_EMAIL")
      @user = user_info[:user]
      @name = user_info[:name]
      @message = user_info[:message]
      date = Time.now.strftime("%B %d, %Y, %A")
      subject = "New message from Spare Me #{date}"
      mail(to: email, subject: subject)
    end
end