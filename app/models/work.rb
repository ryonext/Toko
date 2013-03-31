class Work < ActiveRecord::Base
  attr_accessible :workspace_id, :name, :creator, :description, :original
  belongs_to :workspace
  mount_uploader :original, WorkUploader
  
  def save
    self.name = original.filename
    super
  end
end
