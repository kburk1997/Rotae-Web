class TasksController < ApplicationController
	def new
	end

	def index
		@tasks = Task.all
	end

	def show
    	@task = Task.find(params[:id])
  	end

  	def edit
		@task = Task.find(params[:id])
	end

	def create
		@task = Task.new(task_params)
 
  		@task.save
  		redirect_to @task
  	end

  	private
  		def task_params
  			params.require(:task).permit(:task_name, :task_time)
  		end
end
