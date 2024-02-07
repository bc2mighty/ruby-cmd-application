require "csv"

module CsvParser
    def save_file(headers, data, filename)
        CSV.open(filename, "w") do |csv|
            csv << headers
            data.each do |datum|
                csv << datum
            end
        end
    end
end