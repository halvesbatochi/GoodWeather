//
//  Constants.swift
//  GoodWeather
//
//  Created by Henrique Alves Batochi on 07/09/22.
//

import Foundation

struct Constants {
    
    struct Urls {
        
        static func urlForWeatherByCity(city: String) -> URL {
            
            //Get the default settings for temperature
            //let userDefaults = UserDefaults.standard
            //let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&units=imperial&APPID=d738fda6eb94c9be97868ba69fd0fdbd")!
        }
    }
}
