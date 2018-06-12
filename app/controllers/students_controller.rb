class StudentsController < ApplicationController
    def index
		@students = Student.all.order(:created_at)
	end

	def show
		
		@student = Student.find(params[:id])
		@classes = StudentsCohort.where("student_id = ?", params[:id])
	end

	def new
		@student = Student.new
	end

	def create
		# the below will do the following
		# Student.create({name: '...', description: '...'})
		flash[:success] = "YOU GOT A student MADE BRUH"
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

		redirect_to students_path
	end

	private

	def student_params
		# will return something that looks like this
		# {name: '...', :description: '...'}
		
		params.require(:student).permit(:f_name, :l_name, :age, :highes_grade)
	end
end
