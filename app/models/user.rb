class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :workspaces, :foreign_key => 'owner_id'
end
