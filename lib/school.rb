# code here!

class School
    attr_accessor :roster, :student_name, :school_name

    def initialize(school_name)
        @school_name = school_name
        @roster = Hash.new{ |g, s| g[s] = [] }
    end

    def add_student(student_name, grade)
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = {}
        @roster.each do |g, s|
            sorted_roster [g] = s.sort
        end
        sorted_roster
    end

end