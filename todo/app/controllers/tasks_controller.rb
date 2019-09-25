class TasksController < ApplicationController
    def index
        @tasks = Task.all
        @newTask = Task.new
    end

    def create
        @task = Task.new(params[:task].permit(:name,:content))
        @task.save
        redirect_to :action => "index"
    end

    def delete
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to :action => "index"
    end

    def edit
        @task = Task.find_by(id: params[:id])
        render "edit"
    end

    def update
        @task = Task.find_by(id: params[:id])
        @task.update(name: params[:name])
        @task.update(content: params[:content])
        redirect_to :action => "index"
    end
end
