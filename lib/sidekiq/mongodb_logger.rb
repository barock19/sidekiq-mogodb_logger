require "sidekiq/mongodb_logger/version"
require "sidekiq/mongodb_logger/middleware"
module Sidekiq
  module MongodbLogger
    
  end
end
Sidekiq.server_middleware do |chain|
  chain.add Sidekiq::MongodbLogger::Middleware
end