class Api::V1::PatientHistoriesController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]

    def create
        @patient_histories = PatientHistory.create(patient_history_params)
        render json: @patient_histories, status: :created
    end
   
    def index
        if params[:patient_id]
            @patient = Patient.find(params[:patient_id])
            @patient_histories = Patient.patient_histories
        else
            @patient_histories = PatientHistory.all
            render json: @patient_histories
        end
    end

    def show
        @patient_history = PatientHistory.find(params[:id])
        render json: @patient_history, serializer: PatientHistorySerializer, status: :ok
    end

    def update
        @patient_history= PatientHistory.find(params[:id])
        @patient_history.update(patient_history_params)
        render json: @patient_history, status: :ok
    end

    #DELETE /@patients/:id
    def destroy
        #find & destroy
        @patient_history= PatientHistory.find(params[:id])
        @patient_history.destroy
        head :no_content
    end
    
    private

    def patient_history_params
        params.permit(:patient_id, :weight, :blood_pressure, :blood_sugar, :temperature, :pulse_rate, :test, :diagnosis, :medication, :notes)
    end

end
