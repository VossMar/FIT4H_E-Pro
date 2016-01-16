class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :set_project


  def index
    @tasks = @project.tasks
  end


  def show
  end


  def new
    @task = Task.new
  end


  def edit
  end


  def create
    @task = @project.tasks.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to project_tasks_path(@task.project_id), notice: 'Task was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to project_tasks_path(@task.project_id), notice: 'Task was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to project_tasks_path(@task.project_id), notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:title, :description, :start_date, :end_date, :project_id)
    end
end


