class WorksController < ApplicationController
  before_action :set_work, only: [:show, :edit, :update, :destroy]

  # POST /works
  # POST /works.json
  def create
    @work = Work.new(work_params)

    respond_to do |format|
      if @work.save
        format.html { redirect_to guests_done_workspace_path(@work.workspace_id) }
        format.json { render action: 'show', status: :created, location: @work }
      else
        format.html { render action: 'new' }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_params
      params.require(:work).permit(:workspace_id, :name, :creator, :description, :original)
    end
end
