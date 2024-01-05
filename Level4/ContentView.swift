//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedColor: Color = .black
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                .frame(width: 320, height: 320)
                .foregroundColor(selectedColor)
            ColorPicker("Color Picker", selection: $selectedColor)
        }
    }
}

#Preview {
    ContentView()
}
