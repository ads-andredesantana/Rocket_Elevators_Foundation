require 'rails_helper'
require 'spec_helper'
require 'ElevatorMedia/streamer'



# RSpec.describe LeadsController, type: :controller do

#     describe 'Contact Form', type: :feature do
#         it 'Is filled and permit parameters' do
#             visit index_path
#             result = expect(page).to have_current_path(index_path)
#             puts "    Are we on the index page? : #{result}"
#             post :create, params: { leads: { contact_full_name: 'Testing', company_name: 'Testing APP', email: 'adsn@testing.com', phone: '514-473-3219', projectname: 'Rocket', project_description: 'elevator', department: 'Sales', message: '12345' } }
#             expect(response.location).to match(index_path)
#         end
#     end
# end

RSpec.describe "Leads", type: :controller do
    newLead = Lead.create(
        contact_full_name: 'Testing',
        company_name: 'Testing APP',
        email: 'adsn@testing.com',
        phone: "514-473-3219",
        project_name: 'Rocket',
        project_description: 'Elevator',
        department: 'Sales',
        message: '12345')

    it 'should be a Lead' do
        expect(newLead).to be_a(Lead)
    end

    it 'should contain a full name' do
        expect(newLead.contact_full_name).to include('Testing')
    end

    it 'should contain a company name' do
        expect(newLead.company_name).to include('Testing APP')
    end

    it 'should contain an email' do
        expect(newLead.email).to include('adsn@testing.com')
    end

    it 'should contain a project_name' do
        expect(newLead.project_name).to include('Rocket')
    end

    it 'should contain a project_description' do
        expect(newLead.project_description).to include('Elevator')
    end

    it 'should contain a department' do
        expect(newLead.department).to include('Sales')
    end

    it 'should contain a message' do
        expect(newLead.message).to include('12345')
    end
end