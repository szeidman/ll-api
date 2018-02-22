class Product < ApplicationRecord
   has_attached_file :image
   do_not_validate_attachment_file_type :image

   has_many :product_users
   has_many :users, through: :product_users

   validates_presence_of :name, :description
   validates_numericality_of :price

end
