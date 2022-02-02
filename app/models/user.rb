class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable, 
         :omniauthable, omniauth_providers: [:github, :google_oauth2]
         
  has_many :posts
  # validates :name, format: {with: /\A[A-z]{1,}\z/, message: 'must be greater than 2 characters'}, presence: true


  def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do | user |
      user.name = provider_data.info.name
      user.email = provider_data.info.email
      user.password = Devise.friendly_token[0, 20]
      user.skip_confirmation!
    end
  end

  enum display: {show: 0, deleted: 1}
  enum user_type: {user: 0 , admin: 1}
end
