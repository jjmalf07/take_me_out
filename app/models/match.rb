class Match < ActiveRecord::Base
  belongs_to :user
  belongs_to :date
  has_many(:events, { :through => :dates })
end
