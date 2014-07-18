class Comment < ActiveRecord::Base
  belongs_to :userdate

  belongs_to :user

  validates :content, :presence => true, :uniqueness => { :scope => :user_id }

  validates :user_id, :presence => true, :uniqueness => { :scope => :userdate_id }

  validates :userdate_id, :presence => true
end
