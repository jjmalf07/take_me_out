class User < ActiveRecord::Base
  has_many :dates
  has_many(:matches, { :through => :dates })
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
