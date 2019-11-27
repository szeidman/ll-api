class Product < ApplicationRecord
  # before_validation :parse_picture
  # attr_accessor :image_base

  has_attached_file :image, default_url: '/images/:style/missing.png'
  do_not_validate_attachment_file_type :image

  has_many :products_users
  has_many :users, through: :products_users

  validates :name, :description, presence: true
  validates :price, numericality: true

  #  private
  #   def parse_picture
  #     picture = Paperclip.io_adapters.for(image_base)
  #     picture.original_filename = "file.jpg"
  #     self.image = picture
  #   end
  ## Adapted from https://www.pluralsight.com/guides/ruby-ruby-on-rails/handling-file-upload-using-ruby-on-rails-5-api
end
