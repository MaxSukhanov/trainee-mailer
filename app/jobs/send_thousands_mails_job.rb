class SendThousandsMailsJob < ApplicationJob
  def perform
    10_000.times do
      ReaderMailer.greeting_mail('first@email.com').deliver_later
    end
  end
end
