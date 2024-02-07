require './service/http_lib.rb'
require './lib/csv_parser.rb'

module Comment
    include HttpLib
    include CsvParser
    def self.get
        HttpLib.get('/comments')
    end
end