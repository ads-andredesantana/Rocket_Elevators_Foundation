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
        product_grade: 'Standard',
        elevator_cost: '68085.00',
        installation_cost: '6808.50',
        total_cost: '74893.50'
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
        expect(newQuote.no_of_appartments).to be(500)
    end

    it 'should contain a no_of_floors' do
        expect(newQuote.no_of_floors).to be(45)
    end

    it 'should contain a no_of_basements' do
        expect(newQuote.no_of_basements).to be(4)
    end

    it 'should contain a product_grade' do
        expect(newQuote.product_grade).to include('Standard')
    end

    it 'should contain a elevator_cost' do
        expect(newQuote.elevator_cost).to include('68085.00')
    end

    it 'should contain an installation_cost' do
        expect(newQuote.installation_cost).to include('6808.50')
    end

    it 'should contain a total_cost' do
        expect(newQuote.total_cost).to include('74893.50')
    end
end