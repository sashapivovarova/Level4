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
            Text("\(context.date)")
        }
    }
}

#Preview {
    ContentView()
}
