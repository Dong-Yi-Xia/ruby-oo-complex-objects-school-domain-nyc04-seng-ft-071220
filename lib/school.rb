# code here!
# code here!
require 'pry'

class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
         if !self.roster[grade]
            self.roster[grade] = []
         end
        self.roster[grade]<<student_name
    end

    def grade(lvl)
        self.roster[lvl]
    end

    def sort
        self.roster.each do |grade, student|
            self.roster[grade] = student.sort
        end
    end


end
