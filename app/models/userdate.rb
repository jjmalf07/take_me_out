class Userdate < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  has_many :matches
  has_many :comments, :dependent => :destroy
  has_many(:users, { :through => :matches })
end
