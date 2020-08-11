class TasksController < ApplicationController
  #before_action :set_task, only: [:show, :edit, :update, :destroy]

  # CRUD ACTIONS - to aid the user stories

  def index # Read all
    @tasks = Task.all
  end

  def show # Read all
    # raise - stop code to look inside params
    @task = Task.find(params[:id])
  end

  def new # Empty instance of a restaurant to display the blank form
    @task = Task.new
  end

  def create # Create a restaurant, post it to the DB
    @task = Task.new(strong_task_params) # Create restaurant with strong params - the params that I have allowed
    @task.save
    redirect_to task_path(@task) # Redirect to the restaurant I just created (UX reason - no view for the create action)
  end

  def edit # Instance of the restaurant to be updated for the form
    @task = Task.find(params[:id])
  end

  def update # Update instance of the restaurant in the DB
    @task = Task.find(params[:id])
    @task.update(strong_task_params)

    redirect_to task_path(@task) # Redirect to the restaurant I just updated (UX reason - no view for the update action)
  end

  def destroy # Delete a restaurant instance from DB
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  private

  # SECURITY MEASURE
  def strong_task_params # Whitelist approach - you specify which keys in the params hash you allow

    params.require(:task).permit(:title, :details, :completed)
    # params = {
      #   restaurant = { name: "Ishin", address: "Mitte",rating: 4 }
      # }
   end


   # def set_task
   #  @task = Task.find(params[:id])
   # end


end

