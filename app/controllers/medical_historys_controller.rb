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
end
