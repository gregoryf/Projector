class ProjectsController < ApplicationController

  respond_to :html

  def index
    @projects = Project.all

    respond_with @projects
  end
  
  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])

    respond_with @projects
  end
  
  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new
    
    respond_with @projects
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(params[:project])

      if @project.save
        redirect_to @project, notice: 'Project was successfully created.'
      else
        render action: "new"
      end
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

      if @project.update_attributes(params[:project])
        redirect_to @project, notice: 'Project was successfully updated.'
      else
        render action: "edit"
      end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

   redirect_to projects_url
  end
end
