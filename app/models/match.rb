class Match < ActiveRecord::Base
  belongs_to :user
  belongs_to :userdate
  has_many(:events, { :through => :userdates })
end
