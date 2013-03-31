class WelcomeController < ApplicationController
  before_filter :require_login, :load_my_workspaces
  def index
  end
end
