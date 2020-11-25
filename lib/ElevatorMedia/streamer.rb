


module ElevatorMedia
    class Streamer

        def getContent(type='weather')
            obj =  self.getWeather
            html="<div class='elevator-media-streamer-content'>#{obj}</div>"  
            return html

        end

        # Method to get the weather of Montreal
        def getWeather
            options = { units: "metric", APPID: "b7057c0b99msh20e0b9062f32751p190fcbjsn0a91062986f5" }
            OpenWeather::Current.city_id(6077243, options)
        end








    end  
end    