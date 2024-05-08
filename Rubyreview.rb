puts "What are you five favorite foods?"
foods = []
i = 0
while i < 5
  user_input = gets.chomp
  foods << user_input
  i += 1
end
p foods

# Now, instead of printing out the array, output 5 separate lines of each food, with the prefix, “I love”. For example:

# I love cobb salad
# I love spaghetti
# I love pizza
# I love Swedish meatballs
# I love mac and cheese

foods.each do |food|
  p "I love #{food}"
end

count = 0
while count <= 10
  p count
  count += 1
end

# commit and push to GitHub after fixing folder issue
