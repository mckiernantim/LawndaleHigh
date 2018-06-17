class StudentsController < ApplicationController
	before_action :authenticate_user!
	skip_before_action :verify_authenticity_token, only: [:destroy]
	# before_action :authenticate_user!
	# skip_before_action :verify_authenticity_token, only: [:destroy]
    def index
		@students = Student.all.order(:created_at)
		@cohorts = Cohort.all
		
	end

	def show
	
		@student = Student.find(params[:id])
		@cohort = @student.cohorts
	end

	def new
		@student = Student.new
		
	end

	def create
		# the below will do the following
		# Student.create({name: '...', description: '...'})
		
		Student.create(student_params)
		

		redirect_to students_path
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		student = Student.find(params[:id])
		student.update(student_params)

		redirect_to students_path
	end

	def destroy
		Student.destroy(params[:id])

		render json: {status: 'success', message: 'student record destroyed'}
	end

	private

	def student_params
		# will return something that looks like this
		# {name: '...', :description: '...'}
		
		params.require(:student).permit(:f_name, :l_name, :age, :highes_grade)
	end
end
