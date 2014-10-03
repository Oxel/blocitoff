class User < ActiveRecord::Base
  require 'bcrypt'
  attr_accessor :password
  before_save :encrypt_password

  validates :password, presence: true, confirmation: true, on: :create
  validates :email, presence: true, uniqueness: true

  private

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
  
end
