# you really need to break down each movie into a Ruby instance
require 'time'
class Movie
  def initialize(options={})
  @title = options[:title]
  @genre = options[:genre]
  @time = Time.parse(options[:time])
  end

  def showing_after?(time)
    movie.each do |instance|
      instance.each do |genre,time,title|
        if time >= Time.parse(time)
          puts "true"
        else
          puts "false"
        end
      end
    end
  end

  def comedy?
    movie.each do |instance|
      instance.each do |genre,time,title|
        if genre == "Comedy"
          puts "true"
        else
          puts "false"
        end
      end
    end
  end

end
require 'pry'
movies = [
Movie.new(title: "The Princess Bride",genre:"Comedy",time:"7:00PM"),
Movie.new(title: "Troll 2",genre:"Horror",time:"7:30PM"),
Movie.new(title: "Pet Cemetery",genre:"Horror",time:"8:15PM"),
Movie.new(title: "Flight of the Navigator",genre:"Adventure",time:"8:17PM"),
Movie.new(title: "Teen Witch",genre:"Comedy",time:"8:20PM"),
Movie.new(title: "The Goonies",genre:"Comedy",time:"8:30PM"),
Movie.new(title: "Better Off Dead",genre:"Comedy",time:"8:45PM"),
Movie.new(title: "Weekend at Bernies",genre:"Comedy",time:"9:00PM"),
Movie.new(title: "The Wizard",genre:"Adventure",time:"9:10PM")
]
movie_instances = []
movies.each do |instance|
  instance = Movies.new(movies[:title],movies[:genre],movies[:time])
end
binding.pry
puts movie_instances
binding.pry
# puts movie_instances.showing_after?("5:00PM")
# binding.pry
