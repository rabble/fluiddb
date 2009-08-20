%w{rubygems rest_client}.each { |x| require x }

if defined?(ActiveSupport::JSON)
  JSON = ActiveSupport::JSON
  module JSON
    def self.parse(json)
      decode(json)
    end
  end
else
  require 'json'
end

require 'fluiddb/version'
require 'fluiddb/base'

module FluidDB
  API_URL     = "http://fluiddb.fluidinfo.com/"
    
  class << self
    attr_accessor :username, :password, :debug
  end

  class BadRequest           < StandardError; end
  class NotFound             < StandardError; end
  class NotAcceptable        < StandardError; end
end
