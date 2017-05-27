require 'spec_helper'

PROJECT_ROOT_PATH = File.join(__dir__, '..')
PROJECT_CONFIG_PATH = File.join(PROJECT_ROOT_PATH, 'config')
PROJECT_LIB_PATH = File.join(PROJECT_ROOT_PATH, 'lib')

load File.join(PROJECT_LIB_PATH, 'config_reader.rb')

describe 'config reader'  do
	it 'should read config' do
		config_reader = ConfigReader.new(File.join(PROJECT_CONFIG_PATH, 'config.yml')).read
		expect(config_reader.username).to eq("gmi3024@gmail.com")
	end
end
