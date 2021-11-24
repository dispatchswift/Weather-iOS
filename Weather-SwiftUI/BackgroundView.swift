//
//  BackgroundView.swift
//  Weather-SwiftUI
//
//  Created by Amari Duran on 10/6/21.
//

import SwiftUI

struct BackgroundView: View {
	var isNight: Bool
	
	var body: some View {
		LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : .white]),
									 startPoint: .topLeading,
									 endPoint: .bottomTrailing)
			.edgesIgnoringSafeArea(.all)
	}
}

struct BackgroundView_Previews: PreviewProvider {
	static var previews: some View {
		BackgroundView(isNight: false)
	}
}
