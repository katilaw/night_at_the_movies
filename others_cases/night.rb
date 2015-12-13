require 'time'
	
class Movie
  def initialize (movie_title, genre, time)
    @movie_title = movie_title
    @genre = genre
    @time = Time.parse(time)
  end

  def showing_after? arrival_time
    puts Time.parse(arrival_time) <= @time
  end

  def comedy?
    puts @genre == "Comedy"
  end

  def showing_between? (start_time, end_time)
    puts Time.parse(start_time) <= @time && Time.parse(end_time) >= @time
  end
end

movies = [
  ["The Princess Bride", "Comedy", "7:00PM"],
  ["Troll 2", "Horror", "7:30PM"],
  ["Pet Cemetery", "Horror", "8:15PM"],
  ["Flight of the Navigator", "Adventure", "8:17PM"],
  ["Teen Witch", "Comedy", "8:20PM"],
  ["The Goonies", "Comedy", "8:30PM"],
  ["Better Off Dead", "Comedy", "8:45PM"],
  ["Weekend at Bernies", "Comedy", "9:00PM"],
  ["The Wizard", "Adventure", "9:10PM"],]

movie_instances = []
movies.each do |movie|
  movie_instances << Movie.new(movie[0], movie[1], movie[2])
end