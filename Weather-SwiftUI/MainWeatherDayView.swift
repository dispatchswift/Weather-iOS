//
//  MainWeatherDayView.swift
//  Weather-SwiftUI
//
//  Created by Amari Duran on 10/6/21.
//

import SwiftUI

struct MainWeatherDayView: View {
	var imageName: String
	var temperature: Int
	
	var body: some View {
		VStack(spacing: 24) {
			VStack(spacing: 0) {
				Image(systemName: imageName)
					.renderingMode(.original)
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 180, height: 180)
				
				Text("\(temperature)℉")
					.font(.system(size: 70, weight: .medium, design: .rounded))
					.foregroundColor(.white)
			}
			HStack(spacing: 20) {
				WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 80)
				WeatherDayView(dayOfWeek: "Wed", imageName: "sun.max.fill", temperature: 95)
				WeatherDayView(dayOfWeek: "Thu", imageName: "sun.max.fill", temperature: 90)
				WeatherDayView(dayOfWeek: "Fri", imageName: "cloud.sun.fill", temperature: 90)
				WeatherDayView(dayOfWeek: "Sat", imageName: "sun.max.fill", temperature: 95)
			}
		}
	}
}

struct MainWeatherDayView_Previews: PreviewProvider {
	static var previews: some View {
		ZStack {
			BackgroundView(isNight: true)
			MainWeatherDayView(imageName: "cloud.sun.fill", temperature: 90)
		}
	}
}
