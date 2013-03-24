require 'spec_helper'

describe "workspaces/index" do
  before(:each) do
    assign(:workspaces, [
      stub_model(Workspace,
        :name => "Name",
        :owner_id => "Owner"
      ),
      stub_model(Workspace,
        :name => "Name",
        :owner_id => "Owner"
      )
    ])
  end

  it "renders a list of workspaces" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
  end
end
