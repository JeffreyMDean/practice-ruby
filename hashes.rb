# C. Use hashes with symbols to represent the following scenario:
# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).
# Bonus: Read more about Ruby array and hash methods. Explore using different methods in your code.


pen = {color: "blue", price: 1}
charger = {color: "black", price: 20}
book = {color: "green", price: 7}

pen = {:color => "blue", :price => 1}
charger = {:color => "black", :price => 20}
book = {:color => "green", :price => 7}


class Item
  attr_reader :color, :price

  def initialize(input_color, input_price)
    @color = input_color
    @price = input_price
  end

  def print_info
    puts "#{color} #{price}"
  end
end

item1 = Item.new("red", 28)

p item1

# Rewrite your store items using a class with a single options hash in the initialize method.

def input_options
color = input_options(:color) 
price = input_options(:price)
end

item = [{}]


