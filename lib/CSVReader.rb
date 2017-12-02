# CSVReader class
# Reads Potato Dataset CSV file from the directory structure
# Uses Ruby's CSV class to read in the entire dataset as a 2-dimensional array
# Returns array for use in Potato Creator

# Author: Ash-Lee Hommy 040840815
# Nov 1st, 2017

require "csv"

class CSVReader
  
  # readFile returns a 2-dimensional array of the Potato dataset, where every row 
  # from the CSV file is an element within the array
  def read_file 
    
    # the Potato dataset location
    file_location = "./00010014-eng.csv"
    
    # error handling
    # throw an exception if the file can't be found
    begin
      puts "Attempting to read Potato dataset file"
      
      # return the array of Potato data
      arr_of_spuds = CSV.read(file_location)
      
    rescue StandardError => e
      # StandardError will raise to console if file is not found
      # Specifically, a SystemCallError 
      # Ruby Exception Tree: http://ruby.bastardsbook.com/chapters/exception-handling/#exception-tree
      puts "Error: File not found: #{e}"
    end
    
  end
  
end