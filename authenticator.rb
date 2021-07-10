users = [
    { username: "mashrur", password: "password1"},
    { username: "jack", password: "password2"},
    { username: "arya", password: "password3"},
    { username: "jonshow", password: "password4"},
    { username: "heisenberg", password: "password5"},
]

p "Welcome to the authenticator"
30.times { print "-"}

p ""
p "This program will take input from the user and compare password"
print "Username: "
user_name = gets.chomp

print "Password: "
password = gets.chomp

p "Your username is #{user_name} and password is #{password}"

user = users.select { | user | user[:username] == user_name}.first

if user == nil
    p "there is no user"
else
    if user[:password] == password
        p "Great, your password is correct!!!"
    else
        p "Sorry, please try a gain"
    end
end    