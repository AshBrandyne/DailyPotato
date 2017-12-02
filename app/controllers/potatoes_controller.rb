# PotatoesController class recieves request (via routing)
# Each method definition (action) makes data available to the potato view, saves/updates to the potato model or routes to a new page
# The 'Potatoes' paths are the main routing path for this project

# Author: Ash-Lee Hommy 040840815
# Nov 1st, 2017

class PotatoesController < ApplicationController
  
  # Index action will be used for the Potato Gallery
  # User is not directly routed to the index yet
  # Current implementation: prints all objects and their attributes within the Potatoes database to the console and index page
  def index
    # this is a list of all the Potatoes in the database
    @all_potatoes = Potato.all
    
    # iterate through each potato in the database and show in console
    @all_potatoes.each do |potato|
      puts "Name: #{potato.name}"
      puts "Description: #{potato.desc}"
      puts "Body: #{potato.body}"
      puts "Mouth: #{potato.mouth}"
      puts "Eyes: #{potato.eyes}"
    end
  end
  
  # Show action
  # After creation of a new random Potato, the ID is passed in
  # Sets the value of the potato from the database and passes to view to display
  def show
    # rails passes all instance variables to the view
    # @potato holds a certain Potato from the database based on the ID primary key
    @potato = Potato.find(params[:id])
  end
  
  # New action
  # Not currently implemented
  def new
    
  end
  
  # Create action
  # Facilitates creation of a new Potato in the database, passing in params from helper method
  # Redirects user to new potato page (Show action)
  def create
    # creates a new Potato and saves all params to the database
    @potato = Potato.create(potato_params)
    
    @potato.save # returns a boolean indicating whether potato was saved or not
    redirect_to @potato
  end
  
  # Private helper method: potato_params
  # Defines the data accepted as params in the potato form
  private
    def potato_params
      # passes parameters to the database columns
      params.require(:potato).permit(:name, :desc, :body, :eyes, :mouth)
    end
end
