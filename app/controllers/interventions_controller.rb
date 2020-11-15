class InterventionsController < ApplicationController
end
 
private
def createIntervention  
 
    Intervention.create(
        author: Employee.where(user_id: current_user.id).first.id,
        customer_id: params[:sel_customer],
        building_id: params[:sel_building],
        battery_id: params[:sel_battery],
        column_id: params[:sel_column],
        report: params[:sel_description],
        employee_id: params[:sel_employee],
        elevator_id: params[:sel_elevator])
        
        redirect_to '/', notice: "Intervention created successfully"
    
end
