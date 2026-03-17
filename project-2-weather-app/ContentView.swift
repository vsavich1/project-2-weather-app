//
//  ContentView.swift
//  project-2-weather-app
//
//  Created by Valentyn Savich on 3/17/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            // background gradient
            LinearGradient(colors: [.lightBlue, .tintedBlue], startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    // location and current info
                    HStack {
                        Image(systemName: "location.fill")
                        Text("Home")
                            .fontWeight(.bold)
                    }
                    .padding(.top, 75)
                    
                    Text("Chapel Hill")
                        .font(.largeTitle)
                    
                    Text("44°")
                        .font(.system(size: 80))
                        .fontWeight(.light)
                    
                    Text("Sunny")
                        .foregroundStyle(.offWhite)

                    Text("H:45°  L:30°")
                    
                    // hourly forecast
                    ZStack {
                        VStack {
                            HStack {
                                Image(systemName: "clock")
                                Text("HOURLY FORECAST")
                            }
                            .font(.caption)
                            .opacity(0.9)
                            .padding(.trailing, 200)
                            .padding(.top, 10)
                            
                            Rectangle()
                                .frame(width: 350, height: 1)
                                .opacity(0.45)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HourView()
                            }
                            .frame(width: 375, height: 98)
                            .clipShape(UnevenRoundedRectangle(cornerRadii: .init(
                                topLeading: 0,
                                bottomLeading: 25,
                                bottomTrailing: 25,
                                topTrailing: 0
                            )))
                            
                        }
                    }
                    .frame(width: 375, height: 145)
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 375, height: 145)
                            .foregroundStyle(.tintedBlue)
                            .opacity(0.45)
                    )
                    .padding(.top, 20)
                    
                    // daily forecast
                    ZStack {
                        VStack {
                            HStack {
                                Image(systemName: "calendar")
                                Text("10-DAY FORECAST")
                            }
                            .font(.caption)
                            .opacity(0.9)
                            .padding(.trailing, 200)
                            .padding(.top, 10)
                            
                            DayView()
                        }
                        .padding(.bottom, 15)
                    }
                    .frame(width: 375, height: 560)
                    .background(RoundedRectangle(cornerRadius: 25)
                        .frame(width: 375, height: 560)
                        .foregroundStyle(.tintedBlue)
                        .opacity(0.45)
                    )
                }
                .fontWeight(.medium)
                .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
