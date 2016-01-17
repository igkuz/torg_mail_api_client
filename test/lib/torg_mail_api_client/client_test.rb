require 'test_helper'

class ClientTest < TestCase

  def setup
    standard_configuration
  end

  def test_should_get_instance
    @client = TorgMailApiClient.get_client
    assert_kind_of(TorgMailApiClient::Client, @client)
  end
end
