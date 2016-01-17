module TorgMailApiClient
  class Client < ::Weary::Client
    domain TorgMailApiClient.config.host

    def initialize(format = nil)
      headers("Authorization" => TorgMailApiClient.config.auth_key)
    end

    class << self
      def config
        TorgMailApiClient.config
      end

      def format
        config.format
      end
    end

    get :shop_reviews, "/#{config.api_version}/seller/{shop_id}/reviews.#{format}" do |resource|
      resource.required   :shop_id
      resource.optional   :page, :sort,             # default sort date
                          :sort_order,              # default order desc
                          :results_per_page, :mark  # default results 0, mark - all
    end
  end
end
