class Student

attr_accessor :student_group_history, :all, :course
attr_reader :name, :course

@@all = []

def initialize(name:)
  @name = name
  @student_group_history = []
  @@all << self

end

def self.all
  @@all
  #all students regardless of course
end

def student_group_history
  # hello = self.name
  y = @student_group_history
  # y.delete_if {|z| z == hello }
end





# def all_in_each_course
#   each_class = @@all.each_with_object({}) {|student, object| object[student.course] = student }
#   each_class
# end


end
