class Workspace < ActiveRecord::Base
  belongs_to :user, :foreign_key => 'owner_id'
  has_many :works
end
