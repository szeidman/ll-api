class User < ActiveRecord::Base
  acts_as_token_authenticatable
  
  # Include default devise modules.
  devise :database_authenticatable
    # , :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :products_users
  has_many :products, through: :products_users
  validates_presence_of :first_name, :last_name
  validates :email, uniqueness: true
end
