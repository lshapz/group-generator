class Student

attr_accessor :student_group_history, :all, :course, :edit_group_history
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

# def student_group_history
#   @edit_group_history
# end

def edit_group_history
  edited_history = @student_group_history
  ## Iterates to get student histories --we need in order to subrtact the student from their own history
  # group1.shuffles.each {|array| array.each {|new_group| new_group.student_group_history.each {|object| object.each {|name| p name.name}}}}

end






# def all_in_each_course
#   each_class = @@all.each_with_object({}) {|student, object| object[student.course] = student }
#   each_class
# end


end
