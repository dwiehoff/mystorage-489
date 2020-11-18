class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # TODO: settings, i.e. user controller

  has_many :spaces, dependent: :destroy
  has_many :reservations, dependent: :destroy
end
