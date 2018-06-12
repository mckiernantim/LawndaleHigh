class Cohort < ApplicationRecord
  belongs_to :course
  has_many :instructors, :through => :instructor_cohorts
  has_many :students, :through => :student_cohorts
end
