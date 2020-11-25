


module ElevatorMedia
    class Streamer

        def getContent(type='weather')
            obj =  self.getWeather
            html="<div class='elevator-media-streamer-content'>#{obj}</div>"  
            return html

        end










    end  
end    