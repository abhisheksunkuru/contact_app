class NotificationMailer < ApplicationMailer

  def notify(user)
    @user = user
    mail(to: "abhisheksunkuru@gmail.com", subject: 'Message from user')
  end
end
