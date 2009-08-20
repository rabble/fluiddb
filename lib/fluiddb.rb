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
  API_DOMAIN     = "fluiddb.fluidinfo.com"
    
  attr_accessor :username, :password, :debug
  

  class BadRequest           < StandardError; end
  class NotFound             < StandardError; end
  class NotAcceptable        < StandardError; end
end
