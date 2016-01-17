require 'torg_mail_api_client/version'

require 'weary'

module TorgMailApiClient

  autoload :Config, 'torg_mail_api_client/config'
  autoload :Client, 'torg_mail_api_client/client'

  def self.get_client
    Client.new
  end

  def self.configure
    yield(config)
  end

  def self.config
    @config ||= Config.new
  end

end
