class Workspace < ActiveRecord::Base
  attr_accessible :name, :owner_id
  belongs_to :user, :foreign_key => 'owner_id'
  has_many :works
end
