


module ElevatorMedia
    class Streamer


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

        # Method to get the Weather Forecast of Quebec
        def getForecast
            options = { units: "metric", APPID: "34282b0d42ef00a0529b546b07c1983b" }
            OpenWeather::Current.city_id(6325494, options)
        end
       

    end  
end    