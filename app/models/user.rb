class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable, 
         :omniauthable, omniauth_providers: [:github, :google_oauth2]
         
  has_many :posts
  # validates :name, format: {with: /\A[A-z]{1,}\z/, message: 'must be greater than 2 characters'}, presence: true

  mount_uploader :avatar, AvatarUploader

  enum display: {show: 0, deleted: 1}
  enum user_type: {user: 0 , admin: 1}

  def self.create_from_github_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do | user |
      user.name = provider_data.info.name
      user.email = provider_data.info.email
      user.password = Devise.friendly_token[0, 20]
    end
  end

  def self.create_from_google_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do | user |
      user.name = provider_data.info.name
      user.email = provider_data.info.email
      user.password = Devise.friendly_token[0, 20]
    end
  end
end
