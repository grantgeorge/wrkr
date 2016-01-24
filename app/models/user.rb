class User < ActiveRecord::Base
  # Include default devise modules.
  # Defaults: :database_authenticatable, :registerable,
  #           :recoverable, :rememberable, :trackable, :validatable,
  #           :confirmable, :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
  include DeviseTokenAuth::Concerns::User

  has_many :workouts
  has_many :exercises
end
