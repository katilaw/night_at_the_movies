require 'time'
​
class Movie
​
  attr_accessor :name, :genre, :start_time
​
  def initialize(row_hash)
    @name = row_hash[:name].strip
    @genre = row_hash[:genre].strip
    @start_time = Time.parse(row_hash[:start_time].strip)
  end
​
  def showing_after?(arrival_time)
    @start_time >= Time.parse(arrival_time)
  end
​
  def showing_between?(early_time, late_time)
    @start_time.between?(Time.parse(early_time),Time.parse(late_time))
  end
​
  def comedy?
    @genre == 'Comedy'
  end
​
  def to_s
    "#{@name} is a #{@genre} film and starts at #{@start_time.strftime("%-l:%M %p")}"
  end
​
end
