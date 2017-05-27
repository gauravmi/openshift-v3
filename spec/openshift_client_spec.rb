load PROJECT_LIB_PATH + 'openshift_client.rb'

describe 'openshift client' do
	it 'should list available resources' do
		config_file_path = PROJECT_CONFIG_PATH + 'config.yml'
		config = ConfigReader.new(config_file_path).read
		oc = OpenshiftClient.new(config, true)
		response = oc.resources
		expect(response.code).to eq(200)
	end
end