#clear out the existing teams and users
Team.destroy_all
User.destroy_all

#create 3 teams...
3.times do
  team = Team.create(
    name: Faker::Team.name,
    sport: Faker::Team.sport,
  )

  #...with 5 users each
  5.times do
    team.users.create(
      name: Faker::Name.unique.name,
      #no need to seed team_id, it'll do it for you. MAGIC!
    )
  end
end