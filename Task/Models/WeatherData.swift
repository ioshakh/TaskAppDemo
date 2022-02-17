//
//  WeatherData.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/17.
//
import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
    let wind: Wind
    let visibility: Int
    let sys: Sys
    
}

struct Main: Codable {
    let temp: Double
    let temp_min: Double
    let temp_max: Double
    let pressure: Int
    let humidity: Int
}

struct Weather: Codable {
    let id: Int
    let description: String
}

struct Wind: Codable {
    let speed: Double
    let deg: Int
}

struct Sys: Codable {
    let country: String
    let sunrise: Int
    let sunset: Int
}
