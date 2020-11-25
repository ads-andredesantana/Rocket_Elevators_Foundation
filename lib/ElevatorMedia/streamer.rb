


module ElevatorMedia
    class Streamer


        # Method to initialize the API key
        def initialize
            @Timer = 'http://worldtimeapi.org/api/timezone/America/Montreal'
        end


        def getContent(type='weather')
            obj =  self.getWeather
            html="<div class='elevator-media-streamer-content'>#{obj}</div>"  
            return html

        end

        # Method to get the weather of Montreal
        def getWeather
            options = { units: "metric", APPID: "877cd1e8cbf3bb9fcc37558528e903e6" }
            OpenWeather::Current.city_id(6077243, options)
        end








    end  
end    