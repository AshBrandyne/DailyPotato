require_relative 'CSVReader'
require_relative 'PotatoDetail'

# PotatoCreator reads from the potato dataset and 
class PotatoCreator
  # read from the CSV
  # create random Potato & set attributes of new Potato
  # return the Potato
  
  # Potato object to be returned
  attr_accessor :potato
  
  def create_potato
    # random index to pull a row from the CSV
    index = random_index
    
    # a CSVReader returns the data set as an array
    # use one random row to create a Potato
    reader = CSVReader.new
    potato_arr = reader.read_file
    
    # represents one random row of data
    potato_row = potato_arr[index]
    
    # Useful data in the dataset:
    # [0] - Year
    # [1] - Province
    # [4] - Coordinate
    # [5] - Value 
    year = potato_row[0].to_i
    province = potato_row[1]
    coord = potato_row[4].to_i
    value = potato_row[5].to_i
    
    # set the Potato Body: year % 3
    # set the Eyes: coord % 3
    # set the Mouth: value % 3
    # set the accessories: just random? based on Province? 
    # TODO: Randomize the name and crap like that. Change values based on number!
    body = year % 3
    eyes = coord % 4
    mouth = value % 2
    @potato = PotatoDetail.new(body, eyes, mouth)
    
  end
  
  
  # return a random int to be used to grab a random line 
  # from the CSV file (between 0 and 6484)
  # 0 is the column names! 
  def random_index
    rand(0..6484)
  end
  
  def save_to_db
    
  end
  

end


