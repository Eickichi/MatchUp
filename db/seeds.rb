require 'faker'

user_count = User.all.count

20.times do |f|
        User.create!(user_name: Faker::Games::Pokemon.name, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, bio: Faker::Quote.famous_last_words, email: "Sasuke#{f+user_count}@yopmail.com", password:"Helloworld", gamertag: Faker::Games::Pokemon.location, city: "Paris", social_tag: Faker::Games::SuperSmashBros.fighter, birth_date: Faker::Date.birthday(min_age: 18, max_age: 65) )
end

puts "20 utilisateurs crees"

20.times do  
        Event.create!(event_name: Faker::Cannabis.cannabinoid, description: Faker::ChuckNorris.fact, creator: User.all.sample, city: "Paris", duration: rand(1..10)*5, event_date: Faker::Date.forward(days: 100), game_played: Faker::Game.title)
end

puts "20 evenements crees"

20.times do  
    Game.create!(game_name: Faker::Game.title, platform: Faker::Game.platform, genre: Faker::Game.genre)
end


20.times do		
	GameComment.create!(comment: Faker::Movies::Hobbit.quote, user: User.all.sample, game: Game.all.sample)
end

20.times do		
	EventComment.create!(comment: Faker::Movies::Hobbit.quote, user: User.all.sample, event: Event.all.sample)
end

puts "20 commentaires de jeux & d'event crees"

20.times do		
	GamePlayed.create!(user: User.all.sample, game: Game.all.sample)
end

20.times do		
	Attendance.create!(user: User.all.sample, event: Event.all.sample)
end

puts "all entries added"