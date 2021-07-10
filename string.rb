# string concatenation
first_name = "Max"
last_name = "Pham"

sentence = "My name is Max"

p sentence

p first_name + " " + last_name

# string interpolation

p "My first name is #{first_name} and my last name is #{last_name}"

# methods, how to find them
p first_name.class
p 10.class

full_name = first_name + " " + last_name
p full_name.length

sentence = "Welcome to the jungle"

p sentence.sub("the jungle", "utopia")
p sentence