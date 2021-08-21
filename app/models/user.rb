class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.guest
      find_or_create_by!(email: 'guest@example.com') do |user|
        user.username = "ゲスト"
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
      end
  end

  has_many :dairies
  has_many :costs
  has_many :manufactures
  has_many :events, dependent: :destroy
  has_many :comments, dependent: :destroy
end
