require_relative "../config/environment.rb"

class Student
  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name, grade, id = nil)
    @name = name 
    @grade = grade
    @id = id
  end 
  
  def self.create_table
    sql = "CREATE TABLE students (
      id INTEGER PRIMARY KEY,
      name TEXT, 
      grade TEXT
      )"
      DB[:conn].execute(sql)
  end 

end
