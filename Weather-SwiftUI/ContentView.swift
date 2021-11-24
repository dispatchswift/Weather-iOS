//
//  ContentView.swift
//  Weather-SwiftUI
//
//  Created by Amari Duran on 10/6/21.
//

import SwiftUI

struct ContentView: View {
	@State var isNight = false
	
	var body: some View {
		ZStack {
			BackgroundView(isNight: isNight)
			VStack {
				CityTextView(cityName: "Cupertino California")
				MainWeatherDayView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
													 temperature: 75)
				Spacer()
				Button {
					isNight.toggle()
				} label: {
					WeatherButtonView(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
				}
				Spacer()
			}
		}
	}
}

struct CityTextView: View {
	var cityName: String
	
	var body: some View {
		Text(cityName)
			.font(.system(size: 32, weight: .medium, design: .rounded))
			.foregroundColor(.white)
			.padding()
	}
}


struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
