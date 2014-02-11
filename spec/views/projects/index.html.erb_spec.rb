require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :address => "Address",
        :latitude => "Latitude",
        :longitude => "Longitude",
        :system_size => "System Size",
        :derate => "Derate",
        :tilt => "Tilt"
      ),
      stub_model(Project,
        :address => "Address",
        :latitude => "Latitude",
        :longitude => "Longitude",
        :system_size => "System Size",
        :derate => "Derate",
        :tilt => "Tilt"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Latitude".to_s, :count => 2
    assert_select "tr>td", :text => "Longitude".to_s, :count => 2
    assert_select "tr>td", :text => "System Size".to_s, :count => 2
    assert_select "tr>td", :text => "Derate".to_s, :count => 2
    assert_select "tr>td", :text => "Tilt".to_s, :count => 2
  end
end
