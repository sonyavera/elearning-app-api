# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.all.destroy_all
Project.all.destroy_all
UserProject.all.destroy_all
Reaction.all.destroy_all
Step.all.destroy_all

require 'faker'
reaction_types = ["like", "love"]


User.create(first_name: "Sonya", last_name: "Gould", username: "sonyavera", email: "svg145@gmail.com")
User.create(first_name: "Jeff", last_name: "Splageff", username: "itsmejeff", email: "jeffadler@me.com")

Project.create(name: "Bookshelves", description: "Make a simple bookshelf", level: "Easy")
Project.create(name: "Wine bottle holder", description: "Build a sophisticated-looking wine bottle holder", level: "Medium")

3.times do
    UserProject.create(user_id: User.all.sample.id, project_id: Project.all.sample.id)
end

10.times do
    Reaction.create(user_id: User.all.sample.id, user_project_id: UserProject.all.sample.id, reaction_type: reaction_types.sample)
end

30.times do
    Step.create(project_id: Project.all.sample.id, description: Faker::GreekPhilosophers.quote, step: rand(8))
end




