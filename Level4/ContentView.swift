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
            Circle()
                .foregroundColor(.green)
                .frame(width:300, height: 300)
                .overlay {
                    Circle()
                        .foregroundColor(.yellow)
                        .frame(width: 200, height: 200)
                        .overlay {
                            Circle()
                                .foregroundColor(.red)
                                .frame(width: 100, height: 100)
                        }
                }
        }
        Circle()
            .fill(.red)
            .frame(width: 100, height: 100)
            .background(Circle()
                .fill(.yellow)
                .frame(width: 200, height: 200)
                .background(Circle()
                    .fill(.green)
                    .frame(width: 300, height: 300)
                    ))
        ZStack {
            Circle()
                .foregroundColor(.green)
                .frame(width: 300, height: 300)
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 200, height: 200)
            Circle()
                .foregroundColor(.red)
                .frame(width: 100, height: 100)
        }
        
    }
}

#Preview {
    ContentView()
}
