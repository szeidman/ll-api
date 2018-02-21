class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable
    # , :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :products
  validates_presence_of :first_name, :last_name
  validates :email, uniqueness: true
end
