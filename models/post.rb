require './service/http_lib'

module Post
    include HttpLib
    def self.get
        HttpLib.get('/posts')
    end
end