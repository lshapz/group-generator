class Group

attr_accessor :name, :number_of_students, :course

@@all = []

def initialize(name:, number_of_students:, course:)
  @name = name
  @number_of_students = number_of_students
  @course = course
  @@all << self 
end 

def who_to_group
  @course.all_my_students 
end 

def group_things
  array_of_groups = []
  who_to_group.each_slice(@number_of_students) {|group|  array_of_groups << group}
  array_of_groups
end 

def self.all
  @@all
end 

end 