class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :dairies
  has_many :costs
  has_many :manufactures
  has_many :events, dependent: :destroy
  has_many :comments, dependent: :destroy
end
