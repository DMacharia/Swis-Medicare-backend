class MedicalHistorysController < ApplicationController
   skip_before_action :authorized, only: [:create, :index]
   
    def index
        if params[:patient_id]
            @patient = Patient.find(params[:patient_id])
            @medical_historys = Patient.medical_historys
        else
            @medical_historys = MedicalHistory.all
            render json: @medical_historys
        end
    end

    def create
        @medical_historys = MedicalHistory.create(medical_history_params)
        render json: @medical_historys, status: :created
    end

    private

    def medical_history_params
        params.permit(:patient_id, :condition, :treatment, :notes)
    end
end

