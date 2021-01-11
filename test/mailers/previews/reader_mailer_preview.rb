# Preview all emails at http://localhost:3000/rails/mailers/reader_mailer
class ReaderMailerPreview < ActionMailer::Preview
  def greeting_mail
    reader = Reader.new(name: 'Robby Fisher', email: 'robby@gmail.com')

    ReaderMailer.with(reader: reader).greeting_mail
  end

end
