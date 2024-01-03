//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

class Cloth {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sayName() {
        print(name)
    }
}

class Shirt: Cloth {
    let size: Int
    
    init(size: Int, name: String) {
        self.size = size
        super.init(name: name)
    }
    
    func saySasha() {
        print("Sasha")
    }
}

struct ContentView: View {
    
    var body: some View {
        VStack {
            Button {
                let myCloth = Cloth(name: "Dress")
                let myShirt = Shirt(size: 95, name: "Shirt")
                
                if myCloth is Cloth {
                    print("This is Cloth.")
                } else {
                    print("This is not Cloth")
                }
                
                if myCloth is Shirt {
                    print("This is Shirt")
                } else {
                    print("This is not Shirt")
                }
                
            } label: {
                Text("Change")
            }
        }
    }
}

#Preview {
    ContentView()
}
