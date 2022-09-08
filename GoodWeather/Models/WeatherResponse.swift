//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by Henrique Alves Batochi on 07/09/22.
//

import Foundation

struct WeatherResponse: Decodable {
    let name: String
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}
