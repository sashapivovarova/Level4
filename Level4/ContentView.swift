//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

struct ContentView: View {
    
    var myURL = URL(string: "https://developer.apple.com/xcode/swiftui/")
    
    var body: some View {
        VStack {
            ShareLink(item: myURL!) {
                Label("Share", image: "MyCustomShareIcon")
            }
        }
    }
}

#Preview {
    ContentView()
}
