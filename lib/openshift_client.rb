require 'rest-client'

class OpenshiftClient
	def initialize(config, basic_auth)
		@config = config
		if basic_auth
			@rest_client = RestClient::Resource.new(config.url, headers={:Authoriazation=>"Bearer #{ENV['TOKEN']}"})
		else
			@rest_client = RestClient::Resource.new(config.url)
		end
	end

	def resources
		@rest_client.get
	end
end