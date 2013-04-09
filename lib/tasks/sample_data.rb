namespace :db do 
  desc "Fill database with sample data"
  task populate: :environment do
    make_venues
    make_movies
    make_events
  end

  def make_venues
    20.times do 
      venue_name = "#{Faker::Company.name} Cinematheque"
      Venue.create!(name: venue_name)
    end
  end

  def make_movies
    100.times do
      movie_name = 
      duration = 
      year =
  end

  def make_events
  end
end