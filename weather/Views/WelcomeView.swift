//
//  WelcomeView.swift
//  weather
//
//  Created by Dyobi on 4/11/22.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        
        VStack {
            
            VStack(spacing: 20) {
                Text("Welcome to the Weather App")
                    .bold()
                    .font(.title)
                
                Text("Please share your current location to get the weather in your area")
                    .padding()
            } // VStack
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            } // LocationButton
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            
        } // VStack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    } // body
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
