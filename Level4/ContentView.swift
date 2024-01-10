//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var current = 67.0
    @State private var minValue = 0.0
    @State private var maxValue = 100.0
    
    var body: some View {
        VStack {
            Gauge(value: current, in: minValue...maxValue) {
                Text("Processing...")
            } currentValueLabel: {
                Text("\(Int(current))")
            } minimumValueLabel: {
                Text("\(Int(minValue))")
            } maximumValueLabel: {
                Text("\(Int(maxValue))")
            }
            .padding()
            .gaugeStyle(.accessoryCircularCapacity)
            
            HStack {
                Button {
                    current += 1
                } label: {
                    Text("Up")
                }
                Button {
                    current -= 1
                } label: {
                    Text("Down")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
