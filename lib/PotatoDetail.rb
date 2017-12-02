# PotatoDetail class
# Used as a data transfer class for creating a new Potato 
# Objects are used to create new data in the database as well as retrieving data from the db

# Author: Ash-Lee Hommy 040840815
# Nov 1st, 2017

class PotatoDetail
  
  # :body - the potato body as an integer
  # :name - the potato name as a string
  # :access - the potato accessories as an array
  # :eyes - the potato eyes as an integer
  # :mouth - the potato mouth as an integer
  # :desc - the potato description as a string
  #
  # attr_reader autogenerates getter methods for each attribute
  attr_reader :body, :name, :access, :eyes, :mouth, :desc
  
  # Initialize method sets default values when a PotatoDetail is created
  # Specifies default values with optional parameters
  def initialize(body, eyes, mouth, name = "Potato Jr", description = "A new potate", accessories = Array.new)
    
    # Instance variables - using 'self' ensures it calls the setter & validates
    self.name = name
    @body = body
    @access = accessories
    @eyes = eyes
    @mouth = mouth
    self.desc = description
  end
  
  # Name setter method with validation to ensure it can't be blank
  def name=(value)
    if value == ""
      raise "Name can't be blank"
    end
    @name = value
  end
  
  # Desc setter method with validation to ensure it can't be blank
  def desc=(value)
    if value == ""
      raise "Description can't be blank"
    end
    @desc = value
  end
  
  # Overidding default to_string method for display purposes
  def to_s
    "Body: " + body.to_s + "\nName: " + name + "\nDesc: " + desc + "\nEyes: " + eyes.to_s + " \nMouth: " + mouth.to_s +
    "\nAccessories: " + access.to_s
  end
  
end