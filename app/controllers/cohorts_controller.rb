class CohortsController < ApplicationController
    before_action :authenticate_user!
	skip_before_action :verify_authenticity_token, only: [:destroy]
    def new
        
      
        @course = Course.find(params[:course_id])
        @cohort = Cohort.new(:course_id=>params[:course_id])
        @classes = StudentsCohort.where("student_id = ?", params[:id])
    end
         
   
    def create
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
    

