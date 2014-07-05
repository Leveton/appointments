class AppointmentsController < ApplicationController

def index
  date_from_ajax = params[:matched_date]
  reduce = Appointment.where(:date => date_from_ajax)
  @new_dates = reduce.collect {|x| x.hour}
  render json: @new_dates
end

def new
  @appointments = Appointment.create
  respond_to do |format|
    format.html
    format.js
  end
end


def create
   @appointment = Appointment.create(params[:appointments])
    if @appointment.save
      redirect_to new_appointment_path
    else
      err = ''
      @appointment.errors.full_messages.each do |m|
      err << m
    end

      redirect_to new_appointment_path, :flash => { :alert => "#{err}, please try again" }
    end
  end
end
