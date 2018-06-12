class CohortsController < ApplicationController
    def new
        
        @course = Course.find(params[:course_id])
        @cohort = Cohort.new()
        @cohort[:course_id] = :course_id
        @instructors = Instructor.all
        byebug
     
        
	end
    def create
	

        byebug
        @cohort = Cohort.create(cohort_params)
        @instructors_cohort = InstructorsCohort.create(:instructor_id=> params[:instructorSelect], :cohort_id => @cohort.id)
     
        redirect_to courses_path
    end
    private

	def cohort_params
		# will return something that looks like this
		# {name: '...', :description: '...'}
		
		params.require(:cohort).permit(:name, :start, :end, :course_id)
    end
   
end
