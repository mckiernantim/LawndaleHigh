class InstructorsController < ApplicationController
	before_action :authenticate_user!
	skip_before_action :verify_authenticity_token, only: [:destroy]
    def index
		@instructors = Instructor.all.order(:created_at)
		
	end

	def show
		@instructor = Instructor.find(params[:id])
	end

	def new
	
		@instructor = Instructor.new
	end

	def create
		# the below will do the following
		# Instructors.create({name: '...', description: '...'})
		
		Instructor.create(instructor_params)

		redirect_to instructors_path
	end

	def edit
		@instructor = Instructor.find(params[:id])
	end

	def update
		instructor = Instructor.find(params[:id])
		
		instructor.update(instructor_params)

		redirect_to instructors_path
	end

	def destroy
		Instructor.destroy(params[:id])
		render json: {status: 'success', message: 'Instructor record destroyed'}
	end

	private

	def instructor_params
		# will return something that looks like this
		# {name: '...', :description: '...'}
		
		params.require(:instructor).permit(:f_name, :l_name, :salary, :age, :education, :pic)
	end
	
end
