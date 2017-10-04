class EmployeesController < ApplicationController

  def index
    @employees = Unirest.get("localhost:3000/v2/employees.json").body
  end

  def show
    @employee = Unirest.get("localhost:3000/v2/employees/#{params[:id]}.json").body
  end

  def update
    Unirest.patch("localhost:3000/v2/employees/#{params[:id]}.json", headers: { "Accept" => "application/json" }, parameters: {:first_name => params[:first_name], :last_name => params[:last_name], :email => params[:email]})
  end

  def create
    Unirest.post("localhost:3000/v2/employees", headers: { "Accept" => "application/json" }, parameters: {:first_name => params[:first_name], :last_name => params[:last_name], :email => params[:email]})
  end

  def destroy
    Unirest.delete("localhost:3000/v2/employees", headers: { "Accept" => "application/json" })
  end

end
