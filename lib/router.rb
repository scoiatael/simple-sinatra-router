module Sinatra
  module Router
    def get(route, *args)
      block = proc if block_given?
      opts = args.last
      if block.nil? && opts[:to].present?
        controller, method = opts[:to].split('#')
        puts "Wiring #{controller}##{method} to get #{route}"
        block = proc { send(method) }
        namespace route do
          include controller.classify.constantize
          get(&block)
        end
      else
        super
      end
    end

  end

  register Router
end
