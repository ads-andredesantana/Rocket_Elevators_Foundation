require 'rails_helper'


RSpec.describe "Unit Tests to Battery Class" do

    before do
        @battery = Battery.new
    end


    context "battery object validation" do
        it "Validates battery object" do
            expect(@battery).to be_a(Battery)
        end
    end


    describe Battery do
        describe "Associations" do
            it "belongs_to building" do
                assc = described_class.reflect_on_association(:building)
                expect(assc.macro).to eq :belongs_to
            end
        end 
    end


end