module Sinatra
  module App
    module Routes
      def self.registered(app)
        
        index = lambda do
          haml :index
        end

        app.get '/', &index
      end
    end
  end
end
