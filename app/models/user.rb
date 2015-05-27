class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :availabilities
  has_many :categories
  belongs_to :availabilities
  belongs_to :categories
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
