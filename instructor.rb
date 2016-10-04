class Instructor

attr_accessor :name, :course, :all
@@all = []

def initialize(name: , course: )
  @name = name 
  @course = course
  @@all << self 
end 


def self.all
  @@all
end 


end 