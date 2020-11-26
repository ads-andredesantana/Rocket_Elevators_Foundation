require 'rails_helper'
require 'spec_helper'


RSpec.describe "Quotes", type: :controller do
    newQuote = Quote.create(
        contact_full_name: 'Andre',
        company_name: 'Rocket Elevators',
        contact_email: 'fernandes30@gmail.com',
        phone: '514-473-3219',
        building_type: 'Residential',
        no_of_appartments: '500', 
        no_of_floors: '45', 
        no_of_basements: '4',
        )

    it 'should be a Quote' do
        expect(newQuote).to be_a(Quote)
    end

    it 'should contain a full name' do
        expect(newQuote.contact_full_name).to include('Andre')
    end

    it 'should contain a company name' do
        expect(newQuote.company_name).to include('Rocket Elevators')
    end

    it 'should contain an email' do
        expect(newQuote.contact_email).to include('fernandes30@gmail.com')
    end

    it 'should contain a phone number' do
        expect(newQuote.phone).to include('514-473-3219')
    end

    it 'should contain a building_type' do
        expect(newQuote.building_type).to include('Residential')
    end

    it 'should contain a no_of_appartments' do
        expect(newQuote.no_of_appartments).to include('500')
    end

    it 'should contain a no_of_floors' do
        expect(newQuote.no_of_floors).to include('45')
    end

    it 'should contain a no_of_basements' do
        expect(newLead.no_of_basements).to include('4')
    end
end