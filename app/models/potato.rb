# Potato model is an Active Record model
# As the db model was created via a rails command, this file is only for changes to default conventions
# :access is a String within the database, which will be serialized to and from an Array when implemented

# Author: Ash-Lee Hommy 040840815
# Nov 1st, 2017

class Potato < ApplicationRecord
  
  # converts to and from an array when storing the record
  serialize :access, Array
end
