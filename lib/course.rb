require 'Pry'
class Course

attr_accessor :student_names, :all_my_students, :all_my_teachers, :student_id_name_hash, :student_objects
attr_reader :name, :students, :instructors

@@all = []
def initialize(name:, students:)
  @name = name
  #web or ios
  #@students = students
  @students = students
  i = 0
  # stud_objects = students.each_with_object({}) {|student, hash| hash[(i+=1)] = (Student.new(name: student)).name} 
  
  @student_objects = students.map {|student| Student.new(name: student)} 
  student_objects.map {|student| student.course = self}
  @student_id_name_hash = student_objects.each_with_object({}) {|stud, hash| hash[i+=1] = stud.name}
  #binding.pry  
  @@all << self 
  #collects all the flatiron courses ever
  #@instructors = instructors
end 

# def all_my_students
#   my_students = Student.all.select {|student| student.course == self}
#   #checks all the students to see what course they are in, if it is this instance, collects them to my_students
# end 

# def all_my_teachers
#   my_teachers = Instructor.all.select {|teach| teach.course == self}
#     #checks all the teachers to see what course they are in, if it is this instance, collects them to my_teachers
# end 

# def student_names
#   names = all_my_students.map {|student| student.name}
#   #takes all the students in this instance of course and just tells us their names instead of all the irb shit 
#   names 
# end 

# def teacher_names
#   names = all_my_teachers.map {|teacher| teacher.name}
#   #takes all the students in this instance of course and just tells us their names instead of all the irb shit 
#   names 
# end 

def self.all
  @@all
end 

end 