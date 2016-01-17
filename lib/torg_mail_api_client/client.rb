module TorgMailApiClient
  class Client < ::Weary::Client
    domain TorgMailApiClient.config.host

    def initialize(format = nil)
      headers("Authorization" => TorgMailApiClient.config.auth_key)
    end
  end
end
