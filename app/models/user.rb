class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :omniauthable
  has_one    :profile
  belongs_to :game_version

  devise :database_authenticatable,   :trackable,
         :recoverable, :rememberable, :confirmable,
         :validatable, :omniauthable, :registerable

  mount_uploader :avatar, UsersAvatarUploader

  attr_accessible :email,  :password,    :password_confirmation,
                  :avatar, :remember_me, :provider, :uid, :element,
                  :points, :game_version_id
end