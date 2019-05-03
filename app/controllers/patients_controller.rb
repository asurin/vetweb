class PatientsController < ApplicationController

  def patient_params
    params.require(:patient).permit(:name, :dob, :animal, :id)
  end

  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.valid?
      @patient.save
    else
      render "new"
    end
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    @patient.update_attributes(patient_params)
  end

  def destroy
    Patient.find(params[:id]).destroy
    flash[:alert] = "Patient deleted"
    redirect_to patients_path
  end

end
