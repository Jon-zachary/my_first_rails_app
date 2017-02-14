class PeopleController < ApplicationController

  def create
  @person = Person.new(user_params)

  @person.save
  redirect_to @person
  end
    
  def show
  @person = Person.find(params[:id]) 
  end

  def user_params
    params.require(:person).permit(:username, :first_name, :last_name)
  end
end
