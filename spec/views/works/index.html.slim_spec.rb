require 'spec_helper'

describe "works/index" do
  before(:each) do
    assign(:works, [
      stub_model(Work,
        :workspace_id => 1,
        :name => "Name",
        :creator => "creator",
        :description => "Description",
        :original => "Original"
      ),
      stub_model(Work,
        :workspace_id => 1,
        :name => "Name",
        :creator => "creator",
        :description => "Description",
        :original => "Original"
      )
    ])
  end

  it "renders a list of works" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "creator".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Original".to_s, :count => 2
  end
end
