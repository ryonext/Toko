require 'spec_helper'

describe "workspaces/edit" do
  before(:each) do
    @workspace = assign(:workspace, stub_model(Workspace,
      :name => "MyString",
      :owner_id => "MyString"
    ))
  end

  it "renders the edit workspace form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", workspace_path(@workspace), "post" do
      assert_select "input#workspace_name[name=?]", "workspace[name]"
      assert_select "input#workspace_owner_id[name=?]", "workspace[owner_id]"
    end
  end
end
