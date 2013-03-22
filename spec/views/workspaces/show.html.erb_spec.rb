require 'spec_helper'

describe "workspaces/show" do
  before(:each) do
    @workspace = assign(:workspace, stub_model(Workspace,
      :name => "Name",
      :owner_id => "Owner"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Owner/)
  end
end
