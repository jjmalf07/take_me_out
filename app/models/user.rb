class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :userdates

  has_many(:matches, { :through => :userdates })

  has_many :matches, :dependent => :destroy

  has_many :own_userdates, :class_name => "Userdate", :foreign_key => "user_id", :dependent => :destroy

  has_many :match_userdates, :through => :matches, :source => :userdate

end
