# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sidekiq/mongodb_logger/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Zidni Mubarock"]
  gem.email         = ["zidmubarock@gmail.com"]
  gem.description   = %q{Log everything what sidekiq does to Mogodb}
  gem.summary       = %q{Log everything what sidekiq does to Mogodb}
  gem.homepage      = "http://barock19.github.com"
  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "sidekiq-mongodb_logger"
  gem.require_paths = ["lib"]
  gem.version       = Sidekiq::MongodbLogger::VERSION

  gem.add_dependency "sidekiq", ">= 2.2.1"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rack-test"
end
