class GuestsController < ApplicationController
  def upload
    workspace_id = params[:id]
    @work = Work.new(:workspace_id => workspace_id)
  end
end
