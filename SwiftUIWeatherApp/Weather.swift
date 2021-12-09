//
//  Weather.swift
//  SwiftUIWeatherApp
//
//  Created by mnameit on 10/12/21.
//

import Foundation

public struct Weather{
    let city: String
    let temperature: String
    let description: String
    let iconname: String
    
    init(response: APIResponse) {
        city = response.name
        temperature = "\(Int(response.main.temp))"
        description = response.weather.first?.description ?? ""
        iconname = response.weather.first?.iconName ?? ""
    }
}
