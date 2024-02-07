require 'uri'
require 'net/http'

module HttpLib
    @@base_url = 'https://jsonplaceholder.typicode.com'

    def initialize
        # params = {:api_key => ''}
        # @uri.query = URI.encode_www_form(params)
    end

    def get(path)
        uri = URI(@@base_url + "#{path}")
        req = Net::HTTP::Get.new(uri)
        res = Net::HTTP.start(uri.hostname) { |http|
            http.request(req)
        }
        res.is_a?(Net::HTTPSuccess) ? res.body : nil
    end

    def post(path, title, body, user_id)
        uri = URI(@@base_url + path)
        req = Net::HTTP::Post.new(uri)
        req.set_form_data('title' => title, 'body' => body, 'userId' => user_id)
        res = Net::HTTP.start(uri.hostname) {|http|
            http.request(req)
        }
        res.is_a?(Net::HTTPSuccess)
    end

    def put(path)
    end

    def patch(path)
    end

    def delete(path)
    end
end