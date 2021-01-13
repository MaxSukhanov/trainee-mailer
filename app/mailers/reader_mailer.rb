class ReaderMailer < ApplicationMailer
  def greeting_mail(email)
    mail(to: email, subject: 'Hi there!')
  end
end
