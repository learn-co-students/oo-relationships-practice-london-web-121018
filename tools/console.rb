require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Test Data

user1 = User.new("Harry")
user2 = User.new("Tom")
user3 = User.new("Felix")

proj1 = Project.new("Elastic Follow-up", user1, 200)
proj2 = Project.new("Google Alternative", user1, 200)
proj3 = Project.new("Driverless Car", user2, 200)

pledge1 = Pledge.new(user1, proj1, 200)
pledge2 = Pledge.new(user1, proj2, 20)
pledge3 = Pledge.new(user2, proj2, 550)
pledge4 = Pledge.new(user3, proj1, 20)
pledge5 = Pledge.new(user3, proj2, 100)

Pry.start
