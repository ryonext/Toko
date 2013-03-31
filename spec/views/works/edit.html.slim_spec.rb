require 'spec_helper'

describe "works/edit" do
  before(:each) do
    @work = assign(:work, stub_model(Work,
      :workspace_id => 1,
      :name => "MyString",
      :creator => "MyString",
      :description => "MyString",
      :original => "MyString"
    ))
  end

  it "renders the edit work form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", work_path(@work), "post" do
      assert_select "input#work_workspace_id[name=?]", "work[workspace_id]"
      assert_select "input#work_name[name=?]", "work[name]"
      assert_select "input#work_creator[name=?]", "work[creator]"
      assert_select "input#work_description[name=?]", "work[description]"
      assert_select "input#work_original[name=?]", "work[original]"
    end
  end
end
