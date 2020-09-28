class NotificationMailer < ApplicationMailer

  def notify(user)
    @user = user
    mail(to: "info@ajackus.com", subject: 'Message from user')
  end
end
