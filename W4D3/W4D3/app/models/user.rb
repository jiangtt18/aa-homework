require 'bcrypt'
class User < ApplicationRecord
  before_validation :ensure_session_token, on: [:create, :update]

  validates :username, :session_token, presence: true
  validates :password_digest, presence: { message: "password can't be blank"}
  validates :password, length: { in: 6..20 }, allow_nil: true

  attr_reader :password
  def self.find_by_credentials(username,password)
    is_password?(password) ? User.find_by(usename: username) : nil

  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def self.generate_session_token
   SecureRandom::urlsafe_base64(16)
  end

  def reset_session_token!
   self.session_token = self.class.generate_session_token
   self.save!
   self.session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end


  private
  def ensure_session_token
    # we must be sure to use the ||= operator instead of = or ||, otherwise
    # we will end up with a new session token every time we create
    # a new instance of the User class. This includes finding it in the DB!
    self.session_token ||= self.class.generate_session_token
  end
end
