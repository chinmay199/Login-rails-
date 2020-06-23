class User < ApplicationRecord
   has_secure_password

   validates :email, presence: true,
                       length: {minimum: 8, maximum: 8, message: "CompanyID must be 8 characters"}

   validates :password, presence: true,
                          length: {in: 8..15, message: "Password must be between 8 to 15 characters"},
                          format: {with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).*\z/, message: "Please input atleast 1 Uppercase and 1 number"}


end
