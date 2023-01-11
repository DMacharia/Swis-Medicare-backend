class Api::V1::MedicinesController < ApplicationController
    def index
        @medicines = Medicine.all
        render json: @medicines
    end

    def create
        @medicine = medicine.create(medicine_params)
        render json: { medicine: MedicineSerializer.new(@medicine) }, status: :created
        else
            render json: { error: 'failed to create medicine' }, status: :unprocessable_entity
        end
    end


    def show
        @medicine = find_medicine
        render json: @medicine, serializer: MedicineSerializer, status: :ok
    end


    def update
        @medicine = find_medicine
            @medicine.update(medicine_params)
            render json: @medicine, status: :ok
    end

    #DELETE /@medicines/:id
    def destroy
        #find & destroy
        @medicine = find_medicine
            @medicine.destroy
            head :no_content
    end

    def medicine_params
        params.permit(:name, :dosage, :manufacturer, :quantity, :expiry_date, :price)
     end
 
     def render_not_found
         render json: {message: "medicine not found" }, status: :not_found
     end
 
     def find_medicine
         Medicine.find(params[:id])
     end

end
