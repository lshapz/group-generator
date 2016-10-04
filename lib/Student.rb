class Student

attr_accessor :groups, :all, :course
attr_reader :name, :course

@@all = []

def initialize(name:)
  @name = name
  @groups = []
  @@all << self   
  
end 

def self.all
  @@all
  #all students regardless of course 
end 



# def all_in_each_course
#   each_class = @@all.each_with_object({}) {|student, object| object[student.course] = student }
#   each_class 
# end 


end 