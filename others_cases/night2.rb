require 'time'

class Movie

def initialize(movie_name, beg_time, end_time)
  @name = movie_name.to_sym
  @beg_time = Time.parse(beg_time)
  @end_time = Time.parse(end_time)

  @movies = [
             {'The Princess Bride': ['Comedy','19:00PM']},
             {'Troll 2': ['Horror', '19:30PM']},
             {'Pet Cemetery': ['Horror', '8:15PM']},
             {'Flight of the Navigator': ['Adventure', '8:17PM']},1	               {'Teen Witch': ['Comedy', '8:20PM']},
             {'The Goonies': ['Comedy', '8:30PM']},
             {'Better Off Dead': ['Comedy', '8:45PM']},
             {'Weekend at Bernies': ['Comedy', '9:00PM']},
             {'The Wizard': ['Adventure', '9:10PM']},
            ]

  @movies.each do |movie|
    movie.each do |title, value|
      if title == @name
        @start = Time.parse(value[1])
        @gender = value[0]
      else
      end
    end
  end

end

  def comedy?
    if @gender == 'Comedy'
      answer = 'True'
    else
      answer = 'False'
    end
    puts "Is #{@name.to_s} a comedy? - #{answer}"
  end

  def showing_after?
    if @beg_time <= @start
      answer = 'True'
    else
      answer = 'False'
    end
    puts "Does #{@name.to_s} start at or after #{@beg_time}? - #{answer}"
  end

  def showing_between?
    if @beg_time < @start && @start < @end_time
      puts "Does the movies start bewtween #{@beg_time} and #{@end_time}? - True"
    else
      puts "Does the movies start between #{@beg_time} and #{@end_time}? - False"
    end
  end


end



puts "Movies playing in theatre tonight:"
airing_movies = [
                'The Princess Bride',
                'Troll 2',
                'Pet Cemetery',
                'Flight of the Navigator',
                'Teen Witch',
                'The Goonies',
                'Better Off Dead',
                'Weekend at Bernies',
                'The Wizard'
              ]

count = 0
airing_movies.each do |movie|
count += 1
puts "   #{count}. #{movie}"
end

puts ''
puts 'Which movie would you like to see?'

movie_name = gets.chomp.split(" ").map(&:capitalize).join(" ")

puts "What is the ealiest time you can arrive to a movie?"
beg_time = gets.chomp

puts "What is the latest time you can arrive to a movie?"
end_time = gets.chomp

puts ''
movie_to_watch = Movie.new(movie_name, beg_time, end_time)


movie_to_watch.comedy?
movie_to_watch.showing_after?
movie_to_watch.showing_between?