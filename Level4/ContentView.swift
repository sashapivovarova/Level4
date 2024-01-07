//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

struct ContentView: View {
    
    @State var menuColor: Color = .white
    @State var selectedColor: String = "white"
    
    var body: some View {
        VStack {
            Text("Color is \(selectedColor)")
                .padding()
                .background(menuColor)
                .cornerRadius(13)
            Menu {
                Menu("More") {
                    Button("Purple") {
                        menuColor = .purple
                        selectedColor = "purple"
                    }
                    Button("Orange") {
                        menuColor = .orange
                        selectedColor = "orange"
                    }
                }
                Button("Yellow") {
                    menuColor = .yellow
                    selectedColor = "yellow"
                }
                Button("Pink") {
                    menuColor = .pink
                    selectedColor = "pink"
                }
                Button("Blue") {
                    menuColor = .blue
                    selectedColor = "blue"
                }
            } label: {
                Label("Color Change", systemImage: "pencil")
            }
        }
    }
}

#Preview {
    ContentView()
}
