users = [
    { username: "mashrur", password: "password1"},
    { username: "jack", password: "password2"},
    { username: "arya", password: "password3"},
    { username: "jonshow", password: "password4"},
    { username: "heisenberg", password: "password5"},
]

p "Welcome to the authenticator"
30.times { print "-"}

def auth_user(user_name, password, users)
    user = users.select { | user | user[:username] == user_name}.first

    if user == nil
        return "There is no user"
    else
        if user[:password] == password
            return "Great, your password is correct!!!"
        else
            return "Sorry, please try a gain"
        end
    end    
end

while true
    p " "
    p "This program will take input from the user and compare password"
    print "Username: "
    user_name = gets.chomp

    print "Password: "
    password = gets.chomp

    p "Your username is #{user_name} and password is #{password}"

    p auth_user(user_name, password, users)

    p "Press q to quit or anykey to continue"
    input = gets.chomp.downcase
    break if input == "q"
end