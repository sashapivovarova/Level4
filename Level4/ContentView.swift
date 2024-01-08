//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ScrollViewReader { proxy in
            Button("Scroll to 80") {
                withAnimation {
                    proxy.scrollTo(80, anchor: .center)
                }
            }
            ScrollView {
                VStack(spacing: 0) {
                    ForEach(0..<100) { i in
                        Text(i.description)
                            .padding()
                            .id(i)
                    }
                }
            }
            Button("Top") {
                withAnimation {
                    proxy.scrollTo(0)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
