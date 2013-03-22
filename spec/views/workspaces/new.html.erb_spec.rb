require 'spec_helper'

describe "workspaces/new" do
  before(:each) do
    assign(:workspace, stub_model(Workspace,
      :name => "MyString",
      :owner_id => "MyString"
    ).as_new_record)
  end

  it "renders new workspace form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", workspaces_path, "post" do
      assert_select "input#workspace_name[name=?]", "workspace[name]"
      assert_select "input#workspace_owner_id[name=?]", "workspace[owner_id]"
    end
  end
end
