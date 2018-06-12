class Student < ApplicationRecord
    has_many :cohorts, :through => :student_cohorts
end
