class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         attr_accessor :current_password


  def self.guest
      find_or_create_by!(email: 'guest@example.com') do |user|
      user.name = "ゲスト"
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
      end
  end

  def self.admin_guest
    find_or_create_by!(email: 'admin_guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "ゲスト管理者だよ"
      user.admin = true
    end
  end

  validates :name, presence: true
  validates :email, presence: true

  has_many :dairies, dependent: :destroy
  has_many :costs, dependent: :destroy
  has_many :manufactures, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :comments, dependent: :destroy
end
