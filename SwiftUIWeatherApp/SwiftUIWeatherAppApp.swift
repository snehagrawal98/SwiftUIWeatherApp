//
//  SwiftUIWeatherAppApp.swift
//  SwiftUIWeatherApp
//
//  Created by mnameit on 10/12/21.
//

import SwiftUI

@main
struct SwiftUIWeatherAppApp: App {
    var body: some Scene {
        WindowGroup {
            let weatherService = WeatherService()
            let viewModel = WeatherViewModel(weatherService: weatherService)
            WeatherView(viewModel: viewModel)
        }
    }
}
