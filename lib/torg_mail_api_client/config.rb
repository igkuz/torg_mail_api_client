module TorgMailApiClient
  class Config
    attr_accessor :auth_key, :api_version, :format, :host

    def api_version
      @apiversion ||= '1.0'
    end

    def format
      @format ||= 'json'
    end

    def host
      "http://content.api.torg.mail.ru"
    end
  end
end
