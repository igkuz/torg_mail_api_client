# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'torg_mail_api_client/version'

Gem::Specification.new do |gem|
  gem.name          = "torg_mail_api_client"
  gem.version       = TorgMailApiClient::VERSION
  gem.authors       = ["Igor Kuznetsov"]
  gem.email         = ["igkuznetsov@gmail.com"]
  gem.description   = %q{Torg Mail API client written in Ruby}
  gem.summary       = %q{It's a wrapper for TorgMail Api calls written in Ruby. Useful for clients having authoriztion key from Mail.ru.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "weary"
  gem.add_development_dependency "rake"
  gem.required_ruby_version = '~> 2.0'
end
