require 'spec_helper'

describe "works/show" do
  before(:each) do
    @work = assign(:work, stub_model(Work,
      :workspace_id => 1,
      :name => "Name",
      :creator => "creator",
      :description => "Description",
      :original => "Original"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/creator/)
    rendered.should match(/Description/)
    rendered.should match(/Original/)
  end
end
