class StudentsCohortsController < ApplicationController
    before_action :authenticate_user!
	skip_before_action :verify_authenticity_token, only: [:destroy]
    def create
		# the below will do the following
		# Student.create({name: '...', description: '...'})
	    @student_cohorts = StudentsCohort.create(:student_id=> params[:student_id], :cohort_id => params[:cohortSelect])
		

        redirect_to students_path
        byebug
    end
    def new
       
        @student = Student.find(params[:student_id])
        @student_cohort = StudentsCohort.new
        @classes = @student.cohorts
        @cohorts = Cohort.all
        
    end
    
    
end


