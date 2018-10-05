class PeopleController < ApplicationController
 def index
   @user = current_user
   @people = @user.people
 end

 def show
  if params[:user_id]
   @user = User.find_by(id: params[:user_id])
   @person = @user.people.find_by(id: params[:id])
  else
    @person = Person.find_by(id: params[:id])
  end
 end

 def new
   @person = Person.new
 end

 def create
  @person = Person.create(people_params)
  @person.user = User.find(params[:user_id])
  redirect_to user_person_path(@person.user, @person.id) if @person.save
 end

 private

 def people_params
   params.require(:person).permit(:name, :house_number, :apt, :street, :city, :state, :country, :notes, :email, :phone)
 end
end
