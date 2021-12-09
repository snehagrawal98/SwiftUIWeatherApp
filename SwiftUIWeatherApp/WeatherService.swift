//
//  WeatherService.swift
//  SwiftUIWeatherApp
//
//  Created by mnameit on 10/12/21.
//

import Foundation
import CoreLocation

public final class WeatherService: NSObject{
    private let locationManager = CLLocationManager()
    private let API_KEY = "bf0fd0f80acfe624793a95a393b762a0"
    private var completionHandler:((Weather)->Void)?
    
    public func loadWeatherData(_ completionHandler: @escaping ((Weather) -> Void)){
    self.completionHandler = completionHandler
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}

struct APIResponse {
    let name: String
    let main:APIMain
    let weather:[APIWeather]
}


struct APIMain: Decodable {
    let temp: Double
}

struct APIWeather: Decodable{
    let description: String
    let iconName: String

    
    enum CodingKeys: String, CodingKey {
        case description
        case iconName = "main"
    }
}
