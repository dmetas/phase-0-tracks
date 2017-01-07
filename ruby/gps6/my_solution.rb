# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows you to have access to all the contents (methods, classes, varaibles) 
# of a file in the same directory
#
# require gives you access to a file/module when given a path.
require_relative 'state_data'

class VirusPredictor
  # This method gives values to instance variables based on parameters given upon initialization
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # This method is used to call two other methods at once
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # This method determines the number of deaths in a state based on population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end

    number_of_deaths = (@population * multiplier).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # This method determines the speed the disease will spread based on population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


STATE_DATA.each do |key, value|
  key = VirusPredictor.new(key, value[:population_density], value[:population])
  key.virus_effects
end


#=======================================================================
# Reflection Section
=begin 
What are the diffrences between the two different hash syntaxes shown in state_data file?
The two sytnax differences is using the => and the :. for a hash you can either use the hash rocket to add a value or a colon but the colon will only work when the key is a symbol

What does require_relative do? how is it different from require?
require_relative will load in code from another file but only  from a file that is in the same working directory. Require will pull from a specified location that doesn't need to be in the working directory. Require is a good option for running gems

What are some ways to iterate through a hash?
you can use .each with a key and value which is porobably the easiest way to iterate through a hash. you could also seperate the hash into two arrays and iterate with a loop over index value of the array for each array but this would be a very roundabout way to do such a task. .each is the more effecient way as you can iterate over just the value or the key or both. 

When refactoring virus_effects, what stood out to you about the variables, if anything?
The item that stood out the most to me about the variables was that they didn't seem to actually be needed. when calling the @variable within it seemed redundant to then pass values in. That is what ultimately made us remove them and then run the program to see if it still worked as expected. 

What concept did you most solidify in this challenge?
This challenge really helped me with refactoring and reading another persons code. It was usefull to see that just because somehting is being passed that it doesnt always need to be used or is being used. It's made me want to go back look at some of the older code I wrote to see if I have the same issue. 
 


