//
//  TrafficLightColorView.swift
//  TrafficLightSwiftUI
//
//  Created by Supodoco on 08.12.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    var body: some View {
        Circle()
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .frame(width: 160, height: 160)
            .opacity(opacity)
    }
}

struct TrafficLightColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 1)
    }
}
