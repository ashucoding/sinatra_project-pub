class User < ActiveRecord::Base

has_secure_password

validates :email, :presence => true, uniqueness: true
validates :email, format:{with: URI::MailTo::EMAIL_REGEXP}

has_many :cars
end
