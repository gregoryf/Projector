class PeopleController < ApplicationController
  
  def index
    @person = Person.all
  end
  
  def show
    @person = Person.find(params[:id])
  end
end
