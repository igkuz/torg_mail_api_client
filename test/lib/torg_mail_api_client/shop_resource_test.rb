require 'test_helper'


class ShopResourceTest < TestCase

  def setup
    standart_configuration
    @client = TorgMailApiClient.get_client

    @return = { headers: {
      'Authorization' => TorgMailApiClient.config.auth_key,
      'content-type' => 'application/json; charset=utf-8'
    } }
    @shop_url = TorgMailApiClient.config.host + "/#{TorgMailApiClient.config.api_version}/seller/%s"
  end

  def test_getting_shop_reviews
    stub = stub_request(:get, @shop_url % '1' + '/reviews.json').
      to_return(@return.merge(body: load_fixture('shop_reviews.json')))

    @client.shop_reviews(shop_id: 1).perform.parse
  end
end
