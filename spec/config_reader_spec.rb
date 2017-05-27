require 'spec_helper'

load '../lib/config_reader.rb'

describe 'config reader'  do
	it 'should read config' do
		config_reader = ConfigReader.new('../config/config.yml')
		config_reader
	end
end
