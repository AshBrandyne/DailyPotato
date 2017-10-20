class PotatoDetail
  
  # Each accessor has a get method by using attr_reader
  attr_reader :body, :name, :access, :eyes, :mouth, :desc
  
  # specifying default values with optional parameters
  def initialize(body, eyes, mouth, name = "Potato Jr", description = "A new potate", accessories = Array.new)
    # Instance variables - using 'self' ensures it calls the setter & validates
    self.name = name
    @body = body
    @access = accessories
    @eyes = eyes
    @mouth = mouth
    self.desc = description
  end
  
  def name=(value)
    if value == ""
      raise "Name can't be blank"
    end
    @name = value
  end
  
  def desc=(value)
    if value == ""
      raise "Description can't be blank"
    end
    @desc = value
  end
  
  def to_s
    "Body: " + body.to_s + "\nName: " + name + "\nDesc: " + desc + "\nEyes: " + eyes.to_s + " \nMouth: " + mouth.to_s +
    "\nAccessories: " + access.to_s
  end
  
end

