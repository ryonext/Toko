class Work < ActiveRecord::Base
  belongs_to :workspace
  mount_uploader :original, WorkUploader
end
