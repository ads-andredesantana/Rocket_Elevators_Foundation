require 'ElevatorMedia/streamer'
require 'open_weather'


describe ElevatorMedia: :Streamer, :type => :feature do
    let!(:streamer){ElevatorMedia::Streamer.new}

    # Testing the environment
    it "a first test to initialize environment" do
        expect(true).to be true
        
    end

    # Testing the getContent method returns 
    it "should receive a response from getContent" do
        puts streamer.getContent
        expect(streamer).to respond_to(:getContent)        
    end



end