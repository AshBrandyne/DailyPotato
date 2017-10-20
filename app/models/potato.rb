class Potato < ApplicationRecord
  # converts to and from an array when storing the record
  serialize :access, Array
end
