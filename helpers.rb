module Sinatra
  module App
    module Helpers
      def link_to(text,url,opts={})
        attributes = ""
        opts.each { |key,value| attributes << key.to_s << "=\"" << value << "\" "}
        "<a href=\"#{url}\" #{attributes}>#{text}</a>"
      end
      def render(*args)
        if args.first.is_a?(Hash) && args.first.keys.include?(:partial)
          return haml "_#{args.first[:partial]}".to_sym, :layout => false
        else
          super
        end
      end
    end
  end
end
def require_all(dir)
  Dir["./#{dir}/*.rb"].each {|file| require_relative file }
end
