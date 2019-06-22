class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #has_many :guides, dependent: :destroy
  has_many :guide_infos, dependent: :destroy
  has_many :g_infos, dependent: :destroy
end