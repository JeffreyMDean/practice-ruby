# Write code to keep track of the score of a game of bowling. It should have two methods: `roll` which takes in the number of pins knocked down, and `score` which is called at the end and returns the total game score.

# Create a class called Bowling
# Write down the participants
# Create an empty array to store the total points
# Define a method called count
# Create a loop that keeps track of the current bowl (1 or 2)
# Define a method called roll
# Within the method create a loop that counts the number of pins knocked down
# Allow for a second bowl and add the total number of pins knocked down
# Shovel points in to the empty array for storing points
# Write something that keeps track of how many pins are knocked down in a single turn
# Define a method called strike
# Write a condition that accounts for the possibility of the first bowl being a strike
# Within the method give the person 10 points and end the player's turn 
# Define a method called score 
# Within the method create an each loop 
# Get the sum of the total number of pins knocked down for the entire game
# Return the sum

participant1 = "John"
participant2 = "Kelsey"
participant3 = "Daniel"
participant4 = "Kyle"

class Bowling
  total_points = []

  count = 0
  def count
  # Create a loop that keeps track of the current bowl (1 or 2)
    count = count + 1
  end

def pins_down_turn
  #
end

  def strike  # add condition that accounts for first bowl being a strike (end players turn)
    if pins.pins_down_turn == 10
      puts "Strike"
      pins = pins + 10
    end
  end

  def roll
    # counts number of pins knocked down (start some sort of loop here)
    # allow for a second bowl
    pins = pins + pins
    total_points << pins
  end
  return total_points
end



    




