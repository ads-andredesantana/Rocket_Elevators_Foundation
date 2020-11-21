class InterventionsController < ApplicationController
    # before_action :set_intervention, only: [:show, :edit, :update, :destroy]
    # before_action :authenticate_user!
    

def newIntervention  
    
    Intervention.create(
        # author: Employee.where(admin_user_id: current_admin_user.id).first.id,
        author: params[:sel_customer],
        customer_id: params[:sel_customer],
        building_id: params[:sel_building],
        battery_id: params[:sel_battery],
        column_id: params[:sel_column],
        report: params[:sel_description],
        employee_id: params[:sel_employee],
        elevator_id: params[:sel_elevator])
        
        redirect_to '/', notice: "Intervention created successfully"
        
    end


    def intervention_params
        params.permit(
                        :author,
                        :customer_id,
                        :building_id,
                        :battery_id,
                        :column_id,
                        :report,
                        :employee_id,
                        :elevator_id
        )
    end




end
    