class Kid
  include Dance
  extend MetaDancing
  include FancyDance::InstanceMethods
  extend FancyDance::ClassMethods
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
# ////////////////////////////
angelina = Kid.new("Angelina")
mikhail_baryshnikov = Dancer.new("Mikhail")

puts "#{angelina.name} says: #{angelina.twirl}"
puts "#{mikhail_baryshnikov.name} says: #{mikhail_baryshnikov.take_a_bow}"

puts Kid.metadata
puts Dancer.metadata

Kid.megajump + " " + angelina.superjump
