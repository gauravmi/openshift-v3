config_reader_path = PROJECT_LIB_PATH + 'config_reader.rb'
load config_reader_path.to_s

describe 'config reader'  do
	it 'should read config' do
		config_file_path = PROJECT_CONFIG_PATH + 'config.yml'
		config_reader = ConfigReader.new(config_file_path).read
		expect(config_reader.url).to eq('https://console.starter-us-east-1.openshift.com/oapi/v1')
	end
end
