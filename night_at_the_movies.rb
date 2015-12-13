require 'csv'
require_relative 'movie'
​
movies = []
​
CSV.foreach('movies_list.csv', headers: true, header_converters: :symbol) do |row|
  movie = Movie.new(row.to_hash)
  movies << movie
end
​
puts movies
