class RolesController < ApplicationController
  
  respond_to :html
  
  def new
    @role = projecto.roles.new
    
    respond_with [projecto, @role]
  end
  
  def create
    @role = projecto.roles.new(params[:role])

      if @role.save
        redirect_to projecto, notice: 'New role was successfully added.'
      else
        render action: "new"
      end
  end
  
  def edit
    @role = projecto.roles.find(params[:id])
  end
  
  def show
        
  end
  
  def destroy
    @role = projecto.roles.find(params[:id])
    @role.destroy
    
    redirect_to url_for(projecto)    
  end
  
  private
  
  def projecto
    @project ||= Project.find(params[:project_id])
  end  
end