# Virus Predictor

# I worked on this challenge by myself.
# Ispent [#] (started at ~ 11:30) hours on this challenge.
#
#RELEASE 2
# EXPLANATION OF require_relative
# require relative provides method access to the data in state_data.rb file .
#require_relative complements the builtin method require by allowing you to load a file that is relative to the file containing the require_relative statement.
#When you use require to load a file, you are usually accessing functionality that has been properly installed, and made accessible, in your system. require does not offer a good solution for loading files within the project’s code.
#
#RELEASE 3
#the state_data file is a datastructure using nested hashes with two different syntaxes. the first level is string and rocket notation for storing the name of the state and a nested hash as the value for providing population density and population size using symbol notation.


#For example, if you have unit test classes in the "test" directory, and data for them under the test "test/data" directory, then you might use a line like this in a test case:

require_relative 'state_data'

class VirusPredictor
   # when creating new instance of virusPreductor class the initialize method loads the new instance with some preset data (state of origin , pop density, and population size )
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
   # virus_effects method runs two seperate methods (predicted_deaths and speed_of_spread) and provides provides them the paramaters established in the initialize method which are originally pointing to the state_data file. 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private # PRIVATE makes restricts access to methods defined within it. Private makes the "new" method (constructor) inaccessible, to force access to an object through some getter function. A typical Singleton implementation is an obvious example.

     # predicted_deaths methods calculates the number of people who will die in a state based on conditionals evaluating the population desnsity. The calculation itself relies on multiplying the population size by a given percent based on how the population density conditional is evaluated. the Math.floor built-in method rounds down the value calculated.    

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
   # speed_of_spread method calculates the speed at which the virus will spread based on the population desnity of a state. Conditional blocks evaluate what factor the virus will spread at based on the population density of a state.  
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
  
   STATE_DATA.each do |k,v| 
     k = VirusPredictor.new(k, v[:population_density], v[:population])
     k.virus_effects
   end
  
=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

=end

#=======================================================================
# Reflection Section
=begin
  1. What are the differences between the two different hash syntaxes shown in the state_data file?
     - the first syntax is string / rocket notation, and the nested hash uses symbol notation. 

  2. What does require_relative do? How is it different from require?
      - require_relative links the te state_data.rb file to the my_solution.rb file. require_relative points to another file to load into your code while require loads files through the interpreter.

  3. What are some ways to iterate through a hash?
     - .times, .each, sort.map, while, until, for in loops. 

  4. When refactoring virus_effects, what stood out to you about the variables, if anything?
     - they werent necessary since they were already made global in initialize. 

  5. What concept did you most solidify in this challenge?
     - variable scope, and the use of private. 
