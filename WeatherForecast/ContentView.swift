//
//  ContentView.swift
//  WeatherForecast
//
//  Created by 羅壽之 on 2023/4/11.
//

import SwiftUI

struct ContentView: View {
    let cities = ["Taipei", "Sydney", "London", "Tokyo"]
    @State var selectedIndex: Int? = nil
    
    var body: some View {
        VStack {
            // display a webpage
            
            Picker(selection: $selectedIndex, label: Text("Select city").font(.title)) {
                ForEach(cities.indices, id:\.self) { index in
                    Text(cities[index]).tag(index as Int?)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding()
            // add onChange modifier
            
            // show weather info here
            
        }
    }

}

struct WeatherView: View {
    var weather: CityWeather
    
    var body: some View {
        VStack {
            Text(weather.name)
            Text(weather.description)
            Image(uiImage: weather.image)
            Text(weather.name.isEmpty ? "" : String(weather.temp)+" ℃")
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
