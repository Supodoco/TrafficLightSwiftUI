//
//  TrafficLightView.swift
//  TrafficLightSwiftUI
//
//  Created by Supodoco on 08.12.2022.
//

import SwiftUI

struct TrafficLightView: View {
    var redViewOpacity: Double
    var orangeViewOpacity: Double
    var greenViewOpacity: Double
    
    var body: some View {
        VStack(spacing: 20) {
            TrafficLightColorView(color: .red)
                .opacity(redViewOpacity)
            TrafficLightColorView(color: .orange)
                .opacity(orangeViewOpacity)
            TrafficLightColorView(color: .green)
                .opacity(greenViewOpacity)
        }
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(redViewOpacity: 0.4, orangeViewOpacity: 0.4, greenViewOpacity: 0.4)
    }
}
