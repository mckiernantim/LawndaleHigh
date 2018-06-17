class CoursesController < ApplicationController
	before_action :authenticate_user!
	skip_before_action :verify_authenticity_token, only: [:destroy]
	
	def index
		@courses = Course.all.order(:created_at)
		
	end

	def show
		@course = Course.find(params[:id])
	end

	def new
		@course = Course.new
	end

	def create
		# the below will do the following
		# Course.create({name: '...', description: '...'})
		
		
		Course.create(course_params)

		redirect_to courses_path
	end

	def edit
		@course = Course.find(params[:id])
	end

	def update
		course= Course.find(params[:id])
		course.update(course_params)

		redirect_to courses_path
	end

	def destroy
		
		Course.destroy(params[:id])

		
		render json: {status: 'success', message: 'student record destroyed'}
	end
	

	private

	def course_params
		# will return something that looks like this
		# {name: '...', :description: '...'}
		
		params.require(:course).permit(:name, :hours)
	end
end
