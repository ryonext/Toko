class Work < ActiveRecord::Base
  belongs_to :workspace
  mount_uploader :original, WorkUploader
  
  def save
    self.name = original.filename
    super
  end
end
