require 'spec_helper'

describe Project do
  it "is invalid without an address" do
		project = FactoryGirl.build(:project, address: nil)
		expect(project).to have(1).errors_on(:address)
	end

	it "is invalid without a system size" do
		project = FactoryGirl.build(:project, system_size: nil)
		expect(project).to have(1).errors_on(:system_size)
	end
	
end
