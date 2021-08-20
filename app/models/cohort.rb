class Cohort < ActiveRecord::Base
    has_many :students
    

    def add_student(name, age)
        Student.create(cohort: self, name: name, age: age)
    end

    def average_age
        self.students.average(:age).to_f
    end
    
    def total_students
        self.students.length
    end

    def self.biggest
        self.all.max{|a,b| a.students.length <=> b.students.length}
    end

    def self.sort_by_mod
        self.all.order(:current_mod)
    end
end