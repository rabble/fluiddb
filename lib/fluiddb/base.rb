module FluidDB
  class Base
    
    class << self
      
      def query()
        
      end

      def get(obj)
        RestClient.get(obj.url, obj.params, standard_headers)
      end
      
      def head(obj)
        RestClient.head(obj.url, standard_headers)
      end
      
      def put
        RestClient.put(obj.url, obj.params, standard_headers)
      end
      
      def post
        RestClient.post(obj.url, obj.params, standard_headers)
      end
      
      def delete
        RestClient.delete(obj.url, obj.params, standard_headers)
      end
      
      def base_url
        "http://#{username}:#{password}@#{API_DOMAIN}/"
      end
      
      def standard_headers
        {:content_type => 'application/json'}
      end
    end
  end
end