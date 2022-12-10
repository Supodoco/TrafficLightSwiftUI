//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Supodoco on 08.12.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    @State private var opacities = (red: 0.4, orange: 0.4, green: 0.4)
    @State private var currentLight = CurrentLight.red
    private let lightIsOn = 1.0
    private let lightIsOff = 0.4
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                TrafficLightView(
                    redViewOpacity: opacities.red,
                    orangeViewOpacity: opacities.orange,
                    greenViewOpacity: opacities.green
                )
                
                Spacer()
                
                Button(action: changeColor) {
                    Text(buttonTitle)
                        .frame(width: 160, height: 70)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 5))
                }
            }.padding()
        }
    }
    private func changeColor() {
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        switch currentLight {
        case .red:
            opacities.red = lightIsOn
            opacities.green = lightIsOff
            currentLight = .yellow
        case .yellow:
            opacities.red = lightIsOff
            opacities.orange = lightIsOn
            currentLight = .green
        case .green:
            opacities.orange = lightIsOff
            opacities.green = lightIsOn
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
