//
//  HourView.swift
//  project-2-weather-app
//
//  Created by Valentyn Savich on 3/17/26.
//

import SwiftUI

// declare hour struct
struct Hour: Identifiable {
    var id = UUID()
    var hour: String
    var symbol: String
    var temp: String
}

// initialize hours
var hours: [Hour] = [
    Hour(hour: "Now", symbol: "sun.max.fill", temp: "44°"),
    Hour(hour: "3PM", symbol: "sun.max.fill", temp: "45°"),
    Hour(hour: "4PM", symbol: "cloud.sun.fill", temp: "45°"),
    Hour(hour: "5PM", symbol: "cloud.fill", temp: "45°"),
    Hour(hour: "6PM", symbol: "cloud.fill", temp: "44°"),
    Hour(hour: "7PM", symbol: "cloud.sun.fill", temp: "42°"),
    Hour(hour: "7:25PM", symbol: "sunset.fill", temp: "Sunset"),
    Hour(hour: "8PM", symbol: "cloud.moon.fill", temp: "40°"),
    Hour(hour: "9PM", symbol: "moon.stars.fill", temp: "37°"),
    Hour(hour: "10PM", symbol: "moon.stars.fill", temp: "35°"),
    Hour(hour: "11PM", symbol: "moon.stars.fill", temp: "33°"),
    Hour(hour: "12AM", symbol: "moon.stars.fill", temp: "32°"),
    Hour(hour: "1AM", symbol: "cloud.moon.fill", temp: "30°"),
    Hour(hour: "2AM", symbol: "cloud.moon.fill", temp: "29°"),
    Hour(hour: "3AM", symbol: "cloud.fill", temp: "29°"),
    Hour(hour: "4AM", symbol: "cloud.fill", temp: "29°"),
    Hour(hour: "5AM", symbol: "cloud.fill", temp: "28°"),
    Hour(hour: "6AM", symbol: "cloud.fill", temp: "29°"),
    Hour(hour: "7AM", symbol: "cloud.fill", temp: "29°"),
    Hour(hour: "7:22AM", symbol: "sunrise.fill", temp: "Sunrise"),
    Hour(hour: "8AM", symbol: "cloud.fill", temp: "30°"),
    Hour(hour: "9AM", symbol: "cloud.fill", temp: "31°"),
    Hour(hour: "10AM", symbol: "cloud.sun.fill", temp: "34°"),
    Hour(hour: "11AM", symbol: "cloud.sun.fill", temp: "37°"),
    Hour(hour: "12PM", symbol: "sun.max.fill", temp: "40°"),
    Hour(hour: "1PM", symbol: "sun.max.fill", temp: "43°"),
    Hour(hour: "2PM", symbol: "sun.max.fill", temp: "44°")
]

// hour view struct
struct HourView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 25) {
            ForEach(hours) { hour in
                // individual hours
                VStack(spacing: 10) {
                    Text(hour.hour)
                    
                    Image(systemName: hour.symbol)
                        .frame(height: 20)
                        .symbolRenderingMode(.multicolor)
                    
                    Text(hour.temp)
                }
            }
        }
        .fontWeight(.bold)
        .foregroundStyle(.white)
        .opacity(1.0)
        .padding()
    }
}

#Preview {
    HourView()
}
