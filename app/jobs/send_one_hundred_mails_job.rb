class SendOneHundredMailsJob < ApplicationJob
  def perform
    100.times do
      ReaderMailer.greeting_mail('second@email.com').deliver_later(wait: 10.seconds)
    end
  end
end
