# Potato_test class
# Unit tests for the Potato model

# Author: Ash-Lee Hommy 040840815
# Nov 1st, 2017
require 'test_helper'

class PotatoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "creating and saving a Potato" do
    
    # truthy test: potato should save to the db with name and desc
    potato = Potato.new :name => "Mr. Potato Head",
      :desc => "A brand spankin' new potato",
      :id => 1
     
    assert potato.save, "Saved the potato with name and description"
    
    # truthy test: locate potato by ID and ensure it is equal to the created potato
    potato_copy = Potato.find(1)
    
    assert_equal potato, potato_copy
    
    # falsy test: potato changes details and should not the same
    potato.name = "Mrs. Potato Head"
    
    !assert_equal potato, potato_copy
    
    # truthy test: assert that the new potato has saved
    assert potato.save
    
    # truthy test: assert that a potato can be destroyed
    assert potato.destroy
    
  end
  
end
