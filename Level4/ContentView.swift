//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

struct ContentView: View {
    
    @State var agreementText = "In order to use Apple’s developer tools and services, or distribute software on Apple platforms, you’ll need to adhere to the applicable terms in the following agreements and guidelines. Be certain to read the relevant terms carefully as you design and develop your software. Please note that the English language version of the agreements you accept in your developer account are binding and the most up to date. Any other language translations of select agreements that we may provide are for your convenience."
    @State var userAgreed = false
    
    var body: some View {
        VStack {
            GroupBox(label:
                        Label("End-User Agreement", systemImage: "building.columns")
            ) {
                ScrollView(.vertical, showsIndicators: true) {
                    Text(agreementText)
                        .font(.footnote)
                }
                .frame(height: 100)
                Toggle(isOn: $userAgreed) {
                    Text("I agree to the above terms")
                }
            }
            GroupBox {
                ScrollView(.vertical, showsIndicators: true) {
                    Text(agreementText)
                        .font(.footnote)
                }
                .frame(height: 100)
                Toggle(isOn: $userAgreed) {
                    Text("I agree to the above terms")
                }
            } label: {
                Label("Security", systemImage: "lock")
            }
        }
    }
}

#Preview {
    ContentView()
}
