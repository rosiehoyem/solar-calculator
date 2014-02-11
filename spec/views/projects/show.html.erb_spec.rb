require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :address => "Address",
      :latitude => "Latitude",
      :longitude => "Longitude",
      :system_size => "System Size",
      :derate => "Derate",
      :tilt => "Tilt"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    rendered.should match(/Latitude/)
    rendered.should match(/Longitude/)
    rendered.should match(/System Size/)
    rendered.should match(/Derate/)
    rendered.should match(/Tilt/)
  end
end
