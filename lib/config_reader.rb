require 'json'
require 'yaml'

class ConfigReader
	def initialize(file_path)
		@path = file_path
	end

	def read
		data = YAML::load(File.open(@path, "r")
		JSON.parse(data.to_json)
	end
end