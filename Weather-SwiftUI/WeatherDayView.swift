//
//  WeatherDayView.swift
//  Weather-SwiftUI
//
//  Created by Amari Duran on 10/6/21.
//

import SwiftUI

struct WeatherDayView: View {
	var dayOfWeek: String
	var imageName: String
	var temperature: Int
	
	var body: some View {
		VStack {
			Text(dayOfWeek)
				.font(.system(size: 16, weight: .medium, design: .rounded))
				.foregroundColor(.white)

			Image(systemName: imageName)
				.renderingMode(.original)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 40, height: 40)
			
			Text("\(temperature)°")
				.font(.system(size: 28, weight: .medium, design: .rounded))
				.foregroundColor(.white)
		}
	}
}

struct WeatherDayView_Previews: PreviewProvider {
	static var previews: some View {
		ZStack {
			BackgroundView(isNight: true)
			WeatherDayView(dayOfWeek: "Mon", imageName: "sun.max.fill", temperature: 95)
		}
	}
}
