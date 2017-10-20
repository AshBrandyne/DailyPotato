require "csv"

# Read contents of file as a String
# Parse string with ruby csv
# create an instance of "PotatoDetail"
# https://www.sitepoint.com/guide-ruby-csv-library-part/

# Ruby stores each table row as an array
# http://ruby-doc.org/stdlib-2.0.0/libdoc/csv/rdoc/CSV.html

class CSVReader
  
  # readFile returns a 2-dimensional array, where every row 
  # from the CSV file is an element within the array
  def read_file 
    arr_of_spuds = CSV.read("../00010014-eng.csv")
  end
  
end






