class Order < ApplicationRecord
    validates :full_name, presence: true
    validates :phone_number, presence: true, length: { minimum: 10 }
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
  