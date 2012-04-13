require 'pushit'

module Pushit
  class Base

    attr_reader :args
    attr_reader :options

    def initialize(args=[])
      @args = args
      @options = options
    end

    def app
      @app ||= args[0]
    end
  end
end
