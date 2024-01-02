//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

protocol Coin: Hashable {
    var name: String { get }
    var value: Int { get set }
    
    func makeSound()
}

struct Yen: Coin {
    func makeSound() {
        print("Japanese Coin")
    }
    
    var name: String
    var value: Int
}

struct Won: Coin {
    func makeSound() {
        print("Korean Coin")
    }
    
    var name: String
    var value: Int
}

struct Dollar: Coin {
    func makeSound() {
        print("USA Coin")
    }
    
    var name: String
    var value: Int
}

struct ContentView: View {
    
    let wallet: [any Coin] = [Yen(name: "yen", value: 300),
                              Yen(name: "yen", value: 500),
                              Won(name:"won", value: 3000),
                              Won(name:"won", value: 5000),
                              Dollar(name:"dollar", value: 3),
                              Dollar(name:"dollar", value: 5)]
    
    var body: some View {
        VStack {
            ForEach(wallet, id: \.hashValue) { item in
                HStack {
                    Text("\(item.value) \(item.name)")
                    Button {
                        item.makeSound()
                    } label: {Text("Which one?")}
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
