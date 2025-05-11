# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed Users
user1 = User.create(name: "nouran", email: "nouran@example.com")
user2 = User.create(name: "dina", email: "dina@example.com")

# Seed Posts
post1 = Post.create(title: "Post 1", content: "This is the first nouran post.", user_id:1)

# Assign Editors
post1.editors << user2