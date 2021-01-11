class ReaderMailer < ApplicationMailer
  def greeting_mail
    @reader = params[:reader]

    mail(to: @reader.email, subject: 'Hi there!')
  end
end
