class TasksController < ApplicationController
  # toutes les tâches
  def index
    @tasks = Task.all
  end

  # 1 tâche
  def show
    @task = Task.find(params[:id])
  end

  # GET ajouter une tâche
  def new
    @task = Task.new # on en a besoin pour instancier le form_with
  end

  # POST ajouter une tâche
  def create
    @task = Task.new(task_params)
    @task.save
    # pas besoin de view
    redirect_to task_path(@task)
  end

  # GET éditer une tâche
  def edit
    @task = Task.find(params[:id])
  end

  # PATCH éditer une tâche
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    # pas besoin de view
    redirect_to task_path(@task)
  end

  # supprimer une tâche
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    # pas besoin de view
    redirect_to task_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
