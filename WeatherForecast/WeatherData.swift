//
//  WeatherData.swift
//  WeatherForecast
//
//  Created by 羅壽之 on 2023/4/11.
//

import SwiftUI
import Combine

struct WeatherData: Codable {
    var name: String
    var main: Main
    var weather: [Weather]
}

struct Main: Codable {
    var temp: Double
    var humidity: Int
}

struct Weather: Codable {
    var description: String
    var icon: String
}

struct CityWeather {
   var name: String = ""
   var temp: Double = 0
   var description: String = ""
   var image: UIImage = UIImage()
}


class WeatherPublisher: ObservableObject {
    @Published var cityWeather = CityWeather()
    
    func getForecase(location: String) {
        let API_URL = "https://api.openweathermap.org/data/2.5/weather?"
        let API_KEY = "Type_Your_API_Key_Here"
        
        // reset the cityWeather at the begining
        
        // confirm the url address
        guard let accessURL = URL(string: API_URL +
                                    "q=\(location)&units=metric&appid=\(API_KEY)")
        else { return }
        
        // Subscribe to the URLSession Publisher
       
    }
    
    func getIconImage(iconName: String) {
        let ICON_URL = "https://openweathermap.org/img/wn/"
        
        guard let accessURL = URL(string: ICON_URL + "\(iconName)@2x.png") else { return }
        
        // subscribe to the URLSession Publisher
        
    }
    
}

