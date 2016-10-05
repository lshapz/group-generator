require 'Pry'
class Course

attr_accessor :student_names, :all_my_students, :all_my_teachers, :student_id_name_hash, :student_objects
attr_reader :name, :instructors

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
    #binding.pry
    @@all << self
    #collects all the flatiron courses ever
    #@instructors = instructors
  end


  def self.all
    @@all
  end

end
