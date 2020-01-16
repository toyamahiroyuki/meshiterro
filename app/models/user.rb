class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :post_images, dependent: :destroy
   has_many :post_comments, dependent: :destroy
   has_many :favorites, dependent: :destroy
end
