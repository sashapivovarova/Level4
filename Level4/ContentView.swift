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
                
//                let myClothToShirt = myCloth as! Shirt
                let myShirtToCloth = myShirt as Cloth
                
                myCloth.sayName()
                myShirt.sayName()
                
//                myClothToShirt.saySasha()
                myShirtToCloth.sayName()
                
            } label: {
                Text("Change")
            }
        }
    }
}

#Preview {
    ContentView()
}
