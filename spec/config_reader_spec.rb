require 'spec_helper'

PROJECT_ROOT_PATH = Pathname(__dir__).parent
PROJECT_CONFIG_PATH = PROJECT_ROOT_PATH + 'config'
PROJECT_LIB_PATH = PROJECT_ROOT_PATH + 'lib'

load File.join(PROJECT_LIB_PATH, 'config_reader.rb')

describe 'config reader'  do
	it 'should read config' do
		config_file_path = PROJECT_CONFIG_PATH + 'config.yml'
		config_reader = ConfigReader.new(config_file_path).read
		expect(config_reader.url).to eq('https://console.starter-us-east-1.openshift.com/oapi/v1')
	end
end
