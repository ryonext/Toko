class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :load_my_workspaces

  def load_my_workspaces
    @workspaces = Workspace.all
  end

  protected
  def not_authenticated
    redirect_to login_path, :alert => "Please login first."
  end
end
