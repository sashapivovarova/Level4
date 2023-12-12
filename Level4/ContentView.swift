//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

class Taxi {
    init(driver: String) {
        self.driver = driver
        self.driver = addDot(name: driver)
    }
    private var driver: String
    
    private func addDot(name: String) -> String {
        return name + "."
    }
    
    func getDriverName() -> String {
        return driver
    }
}

struct ContentView: View {
    
    var myTaxi = Taxi(driver: "Sasha")
    
    var body: some View {
        VStack {
            Text("The driver is ")
            Button {
                print(myTaxi.getDriverName())
            } label: {
                Text("Change")
            }
        }
    }
}

#Preview {
    ContentView()
}
