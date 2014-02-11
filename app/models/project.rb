class Project < ActiveRecord::Base
	validates :address, :system_size, presence: true
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

  def get_monthly_profile(system_size, lat, lon)
    response = self.class.get 'http://developer.nrel.gov/api/pvwatts/v4.json?api_key='+ ENV["PVWATTS_API_KEY"] + '&system_size='+ system_size +'&dataset=tmy2&derate=0.77&lat='+ lat +'&lon='+ lon
  	response['ac_monthly'] = project.ac_monthly
		response['dc_monthly'] = project.dc_monthly
  end

end
