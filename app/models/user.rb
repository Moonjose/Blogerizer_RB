class User < ApplicationRecord
  rolify
  has_many :articles, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable,
          :registerable,
          :confirmable,
          :recoverable, 
          :rememberable, 
          :validatable,
          :trackable
end
