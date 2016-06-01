class PeopleController < ApplicationController
  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def index
    @person = Person.all
  end

  def create
    @person = Person.new(params[person_params])
    @person.save
    redirect_to @person
  end

  private
  def person_params
    params.require(:person).permit(:first_name, :last_name, :email, :about_you)
  end

end
