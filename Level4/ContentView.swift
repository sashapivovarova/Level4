//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TimelineView(.periodic(from: Date(), by: 1.0)) { context in
            
            let date = context.date
            let seconds = Calendar.current.component(.second, from: date)
            
            Circle()
                .trim(from: 0, to: Double(seconds) / 60.0)
                .stroke(seconds > 50 ? .red : .blue, lineWidth: 30)
                .rotationEffect(Angle(degrees: -90))
                .overlay {
                    Text("\(seconds)")
                }
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
