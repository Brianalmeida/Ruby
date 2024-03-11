class Blurbalizer
  def initialize(title)
    @title		= title
    @blurbs		= []
  end
  
  def add_a_blurb(mood, content)
    # The
    @blurbs << Blurb.new(mood, content)
  end
  
  def show_timeline
    puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs"
    
    @blurbs.sort_by { |t|
      t.time
      }.reverse.each { |t|
        puts "#{t.content.ljust(40)}"} #{t.time}"
	end
end

myapp = Blurbalizer.new "The Big Blurb Theory"

myapp.add_a_blurb :moody, "Add more blurbs here"

myapp.show_timeline
