require 'yaml'
require 'ostruct'

class ConfigReader
	def initialize(file_path)
		@path = file_path
	end

	def read
		data = YAML::load(File.open(@path, "r"))
		OpenStruct.new(data)
	end
end