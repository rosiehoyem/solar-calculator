require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :address => "MyString",
      :latitude => "MyString",
      :longitude => "MyString",
      :system_size => "MyString",
      :derate => "MyString",
      :tilt => "MyString"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", projects_path, "post" do
      assert_select "input#project_address[name=?]", "project[address]"
      assert_select "input#project_latitude[name=?]", "project[latitude]"
      assert_select "input#project_longitude[name=?]", "project[longitude]"
      assert_select "input#project_system_size[name=?]", "project[system_size]"
      assert_select "input#project_derate[name=?]", "project[derate]"
      assert_select "input#project_tilt[name=?]", "project[tilt]"
    end
  end
end
