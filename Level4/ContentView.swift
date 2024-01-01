//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

class Boom {
    let power: Int
    var action: () -> ()
    
    func explode(closure: @escaping () -> ()) {
        action = closure
    }
    
    func act() {
        action()
    }
    
    init(power: Int, action: @escaping () -> Void) {
        self.power = power
        self.action = action
    }
}

struct ContentView: View {
        
    var body: some View {
        VStack {
            Button {
                let myBoom = Boom(power: 3, action: {})
                myBoom.explode {
                    print("Boooooom!")
                }
                myBoom.act()
            } label: {
                Text("Boom!")
            }
        }
    }
}

#Preview {
    ContentView()
}
