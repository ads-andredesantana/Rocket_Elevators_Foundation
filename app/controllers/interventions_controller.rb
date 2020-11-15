class InterventionsController < ApplicationController
end

private
def createIntervention  

    Intervention.create(
        author: Employee.where(user_id: current_user.id).first.id,
        customer_id: params[:selectcustomer],
        building_id: params[:selectbuilding],
        battery_id: params[:selectbattery],
        column_id: params[:selectcolumn],
        report: params[:selectdescription],
        employee_id: params[:selectemployee],
        elevator_id: params[:selectelevator])
        
        redirect_to '/', notice: "Intervention created successfully"
    
end