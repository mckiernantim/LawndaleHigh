class Instructor < ApplicationRecord
    has_many :cohorts, :through => :instructor_cohorts
end
