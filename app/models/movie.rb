class Movie < ActiveRecord::Base
  attr_accessible :artist, :country, :description, :length_minutes, :title, :year

  validates :title, presence: true
end
