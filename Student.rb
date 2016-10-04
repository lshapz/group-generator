class Student

attr_accessor :groups, :all
attr_reader :name, :course

@@all = []

def initialize(name:, course:)
  @name = name
  @course = course
  @groups = []
end 

def self.all
  @@all
  #all students regardless of course 
end 

def all_in_each_course

  each_class = @@all.each_with_object({}) {|student, object| object[student.course] = student }
  each_class 
end 


end 