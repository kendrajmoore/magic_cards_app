class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_save { email.downcase! }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                   format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
                    has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :card_datum
end
