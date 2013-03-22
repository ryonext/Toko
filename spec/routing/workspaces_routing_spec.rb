require "spec_helper"

describe WorkspacesController do
  describe "routing" do

    it "routes to #index" do
      get("/workspaces").should route_to("workspaces#index")
    end

    it "routes to #new" do
      get("/workspaces/new").should route_to("workspaces#new")
    end

    it "routes to #show" do
      get("/workspaces/1").should route_to("workspaces#show", :id => "1")
    end

    it "routes to #edit" do
      get("/workspaces/1/edit").should route_to("workspaces#edit", :id => "1")
    end

    it "routes to #create" do
      post("/workspaces").should route_to("workspaces#create")
    end

    it "routes to #update" do
      put("/workspaces/1").should route_to("workspaces#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/workspaces/1").should route_to("workspaces#destroy", :id => "1")
    end

  end
end
