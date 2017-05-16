class RegistrationsController < ApplicationController

def new
  @registration =Registration.new
end

def create
  @registration = Registration.new(registration_params)

  @registration.save
  redirect_to @registration
end

def show
  @registration = Registration.find(params[:id])
end

def index
  @registrations = Registration.all
end

private
def registration_params
  params.require(:registration).permit(:username, :email)
end

end
