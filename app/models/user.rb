class User < ApplicationRecord

  before_create :set_email_verification_defaults

  has_many :recipes, dependent: :destroy
  has_many :foods, dependent: :destroy
  has_many :ingredients, through: :recipes

  acts_as_token_authenticatable

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def set_email_verification_token
    self.email_verification_token = rand(1000...9999)
  end

  def generate_email_verification_token
    rand(1000...9999)
  end

  def set_email_verification_defaults
    self.email_verification_token = generate_email_verification_token if email_verification_token.nil?
  end

  def verify_email
    self.email_verified = true
    self.email_verification_token = nil
  end

  def refresh_email_verification_token
    self.update(email_verification_token: generate_email_verification_token)
  end

  def verify_agreement
    self.agreement = true
  end
end
