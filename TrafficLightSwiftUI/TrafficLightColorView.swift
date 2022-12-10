//
//  TrafficLightColorView.swift
//  TrafficLightSwiftUI
//
//  Created by Supodoco on 08.12.2022.
//

import SwiftUI

struct TrafficLightColorView: View {
    let color: Color
    var body: some View {
        Circle()
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .frame(width: 160, height: 160)
    }
}

struct TrafficLightColorView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightColorView(color: .red)
    }
}
