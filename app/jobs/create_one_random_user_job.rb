class CreateOneRandomUserJob < ApplicationJob
  retry_on ActiveModel::UnknownAttributeError, wait: 1.hour, queue: :critical

  def perform
    Reader.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      undefined_attr: Faker::Internet.password
    )
  end
end
