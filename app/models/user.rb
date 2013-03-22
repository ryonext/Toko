class User < ActiveRecord::Base
  has_many :workspaces
end
