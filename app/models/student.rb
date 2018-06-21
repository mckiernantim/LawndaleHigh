class Student < ApplicationRecord
    has_many :students_cohorts, dependent: :destroy
    has_many :cohorts, :through => :students_cohorts
    has_one_attached :pic
end
