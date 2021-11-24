//
//  WeatherButtonView.swift
//  Weather-SwiftUI
//
//  Created by Amari Duran on 10/6/21.
//

import SwiftUI

struct WeatherButtonView: View {
	var title: String
	var textColor: Color
	var backgroundColor: Color
	
	var body: some View {
		Text(title)
			.frame(width: 280, height: 50)
			.background(backgroundColor)
			.foregroundColor(textColor)
			.font(.system(size: 20, weight: .medium, design: .rounded))
			.cornerRadius(10)
	}
}

struct WeatherButtonView_Previews: PreviewProvider {
	static var previews: some View {
		WeatherButtonView(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
			.previewLayout(.sizeThatFits)
	}
}
