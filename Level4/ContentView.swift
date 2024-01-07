//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Link(destination: URL(string: "https://www.google.com")!) {
                Label("Google", systemImage: "star")
                    .padding()
                    .background(.pink)
                    .cornerRadius(13)
            }
            
            Link("Google", destination: URL(string: "https://www.google.com")!)
                .padding()
                .background(.pink)
                .cornerRadius(13)
        }
    }
}

#Preview {
    ContentView()
}
