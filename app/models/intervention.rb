class Intervention < ApplicationRecord
    has_many :admin_users
    has_many :customers
    # after_create :new_zendesk_intervention_ticket
    
    def create_intervention_ticket
        client = ZendeskAPI::Client.new do |config|
            config.url = ENV['ZENDESK_URL']
            config.username = ENV['ZENDESK_USERNAME']
            config.token = ENV['ZENDESK_TOKEN']
        end

# var cl = Customer.find(self.customer_id).company_name

        ZendeskAPI::Ticket.create!($client, 
            :subject => "New intervention request!", 
            :comment => { 
                :value => "New intervention created by employee ID: #{self.employee},

                
                Customer ID: #{self.customer_id}
                Building ID: #{self.building_id}
                Battery ID: #{self.battery_id}
                Column ID: #{self.column_id}
                Elevator ID: #{self.elevator_id}
                Assigned to employee ID: #{self.employee_id}
                Description: #{self.report} "
            }, 
            :requester => { 
                "name": Employee.where(user_id: self.employee).first.first_name + " " + Employee.where(user_id: self.employee).first.last_name, 
                "email": Employee.where(user_id: self.employee).first.email
            },
            :priority => "normal",
            :type => "problem"
            )
        end

end
# Customer.find