class PotatoesController < ApplicationController
  def index
    # this is a list of all the Potatoes in the database
    @all_potatoes = Potato.all
    
    # interate through each post and show it
    @all_potatoes.each do |potato|
      puts "Name: #{potato.name}"
      puts "Description: #{potato.desc}"
      puts "Body: #{potato.body}"
      puts "Mouth: #{potato.mouth}"
      puts "Eyes: #{potato.eyes}"
    end
  end
  
  def show
    # rails passes all instance variables to the view
    @potato = Potato.find(params[:id])
  end
  
  def new
    
  end
  
  def create
    # creates a new Potato and saves the name and desc
    @potato = Potato.create(potato_params)
    
    @potato.save # returns a boolean indicating whether potato was saved or not
    redirect_to @potato
  end
  
  # Private helper method: potato_params
  # Defines the data accepted as params in the potato form
  private
    def potato_params
      params.require(:potato).permit(:name, :desc, :body, :eyes, :mouth)
    end
end
