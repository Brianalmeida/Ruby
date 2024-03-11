# Credit to the TryRuby tutorial 
# 
# This is the last exercise of the tutorial

class Blurb
  attr_accessor :content, :time, :mood

  def initialize(mood, content="")
    @time   = Time.now
    @content = content[0..39]
    @mood   = mood
  end

  # Setting the moods, if you will 
  def moodify
    if @mood == :sad
      return ":("
    elsif @mood == :happy
      return ":)"
    elsif @mood == :meh
      return ":|"
    end
    ":D"
  end
end

# Defining the blurbalizer class
class Blurbalizer
  def initialize(title)
    @title = title
    @blurbs = []
  end

  def add_a_blurb(mood, content)
    @blurbs << Blurb.new(mood, content)
  end

  # Printing the title and number of blurbs using count 
  def show_timeline
    puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs"

    @blurbs.sort_by { |t|
      t.time
    }.reverse.each { |t|
      puts "#{t.content.ljust(40)} #{t.time}"
    }
  end
end

# Wrapping the program up with calling myapp and printing the show_timeline var
myapp.show_timelin
