RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups
end


# Path configuration
PROJECT_ROOT_PATH = Pathname(__dir__).parent
PROJECT_CONFIG_PATH = PROJECT_ROOT_PATH + 'config'
PROJECT_LIB_PATH = PROJECT_ROOT_PATH + 'lib'