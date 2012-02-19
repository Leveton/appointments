class AppointmentsController < ApplicationController

def index
  date_from_ajax = params[:matched_date]
  reduce = Appointment.where(:date => date_from_ajax)
  hour_on_date = reduce.collect {|x| x.hour}
  @new_dates = hour_on_date
  render :layout => false
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
