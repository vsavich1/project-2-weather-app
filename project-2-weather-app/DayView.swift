//
//  DayView.swift
//  project-2-weather-app
//
//  Created by Valentyn Savich on 3/17/26.
//

import SwiftUI

// declare day struct
struct Day: Identifiable {
    var id = UUID()
    var day: String
    var symbol: String
    var minTemp: Int
    var maxTemp: Int
}

var days: [Day] = [
    Day(day: "Today", symbol: "cloud.sun.fill", minTemp: 30, maxTemp: 45),
    Day(day: "Wed", symbol: "cloud.sun.fill", minTemp: 28, maxTemp: 47),
    Day(day: "Thu", symbol: "cloud.sun.fill", minTemp: 33, maxTemp: 60),
    Day(day: "Fri", symbol: "cloud.sun.fill", minTemp: 42, maxTemp: 66),
    Day(day: "Sat", symbol: "cloud.sun.fill", minTemp: 49, maxTemp: 73),
    Day(day: "Sun", symbol: "sun.max.fill", minTemp: 53, maxTemp: 81),
    Day(day: "Mon", symbol: "cloud.sun.fill", minTemp: 45, maxTemp: 70),
    Day(day: "Tue", symbol: "cloud.fill", minTemp: 37, maxTemp: 51),
    Day(day: "Wed", symbol: "sun.max.fill", minTemp: 36, maxTemp: 59),
    Day(day: "Thu", symbol: "cloud.sun.fill", minTemp: 46, maxTemp: 79)
]

// day view struct
struct DayView: View {
    var body: some View {
        VStack(spacing: 15) {
            ForEach(days) { day in
                // declare vars for temp bar
                let offset = CGFloat(day.minTemp - 28) / CGFloat(53)
                let width = CGFloat(day.maxTemp - day.minTemp) / CGFloat(53)
                
                // separator
                Rectangle()
                    .frame(width: 350, height: 1)
                    .opacity(0.45)
                
                // daily info
                HStack {
                    Text(day.day)
                        .frame(width: 50, alignment: .leading)
                    Spacer()
                    
                    Image(systemName: day.symbol)
                        .symbolRenderingMode(.multicolor)
                        .frame(width: 30, alignment: .center)
                    Spacer()
                    
                    Text(String(day.minTemp) + "°")
                        .frame(width: 40, alignment: .trailing)
                    
                    // temp bar
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 30)
                            .opacity(0.2)
                        
                        RoundedRectangle(cornerRadius: 30)
                            .fill(LinearGradient(
                                colors: [.blue, .cyan],
                                startPoint: .leading,
                                endPoint: .trailing
                            ))
                            .frame(width: 100 * width)
                            .offset(x: 100 * offset)
                    }
                    .frame(width: 100, height: 3)
                    
                    Text(String(day.maxTemp) + "°")
                }
                .padding(.horizontal, 12.5)
            }
        }
    }
}

#Preview {
    DayView()
}
