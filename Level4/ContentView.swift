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
            MyCustomButton(backgroundColor: .pink,
                           buttonTitle: "Click") {
                print("Hi!")
            }
            MyCustomButton(testName: "Click Me")
        }
    }
}

struct MyCustomButton: View {
    var backgroundColor: Color
    var buttonTitle: String
    var action: ()->()
    
    init(backgroundColor: Color, buttonTitle: String, action: @escaping () -> Void) {
        self.backgroundColor = backgroundColor
        self.buttonTitle = buttonTitle
        self.action = action
    }
    
    var body: some View {
        Button(buttonTitle) {
            action()
        }
        .background(backgroundColor)
    }
}

extension MyCustomButton {
    init(testName: String) {
        self.init(backgroundColor: .green, buttonTitle: "Click Me") {
            
        }
    }
}

#Preview {
    ContentView()
}
