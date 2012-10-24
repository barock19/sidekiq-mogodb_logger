module Sidekiq
  module MongodbLogger
    class Middleware
      def call(worker, msg, queue)
       worker =  detect_worker msg
        ::Rails.logger.mongoize({
               :method         => 'SIDEKIQ',
               :action         => worker[:method],
               :controller     => worker[:class],
               :path           => '',
               :url            => '',
               :params         => msg['args'],
               :ip             => ''
         }) { yield }
      end
      def detect_worker  msg
        worker = msg['class']
          case worker
            when 'Sidekiq::Extensions::DelayedModel'
              
            when 'Sidekiq::Extensions::DelayedMailer'
            
            when 'Sidekiq::Extensions::DelayedClass'

            else
          end
          {:class => worker, :method => 'perform'}
      end
    end
  end
end
