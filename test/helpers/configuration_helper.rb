module ConfigurationHelper

  def standard_configuration
    TorgMailApiClient.configure do |config|
      config.auth_key = "123"
      config.api_version = "1.0"
      config.host = "http://test.com"
    end
  end
end
