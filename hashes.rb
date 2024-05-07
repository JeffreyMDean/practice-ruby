# C. Use hashes with symbols to represent the following scenario:
# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).
# Bonus: Read more about Ruby array and hash methods. Explore using different methods in your code.

item1 = {name: "pen", color: "blue", price: 1}
item2 = {name: "charger", color: "black", price: 20}
item3 = {name: "book", color: "green", price: 7}

item1 = {:name => "pen", :color => "blue", :price => 1}
item2 = {:name => "charger", :color => "black", :price => 20}
item3 = {:name => "book", :color => "green", :price => 7}

# Rewrite your store items using a class instead of a hash.
# a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
# b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.
# c) Use the attr_writer method to change a value

# Rewrite your store items using a class with a single options hash in the initialize method.

class Item
  attr_reader :name, :color, :price
  attr_writer :price

  def initialize(input_options = {})
    @name = input_options[:name]
    @color = input_options[:color]
    @price = input_options[:price]
  end

  def print_info
    puts "#{name} #{color} $#{price}"
  end
end

pen = Item.new(name: "Gel Pen", color: "blue", price: 2)
puts "Name: #{pen.name}"
puts "Color: #{pen.color}"
puts "Price: #{pen.price}"

pen.price = 3
puts "Adjusted price: $#{pen.price}"



