class MedicalHistoriesController < ApplicationController
   skip_before_action :authorized, only: [:create, :index]
   
    def index
        if params[:patient_id]
            @patient = Patient.find(params[:patient_id])
            @medical_histories = Patient.medical_histories
        else
            @medical_histories = MedicalHistory.all
            render json: @medical_histories
        end
    end

    def create
        @medical_histories = MedicalHistory.create(medical_history_params)
        render json: @medical_histories, status: :created
    end

    private

    def medical_history_params
        params.permit(:patient_id, :weight, :blood_pressure, :blood_sugar, :temperature, :pulse_rate, :test, :diagnosis, :medication, :notes)
    end
end

