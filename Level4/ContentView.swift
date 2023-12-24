//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

class Task {
    let name: String
    let level: String
    
    init(name: String, level: String) {
        self.name = name
        self.level = level
        print("Created!")
    }
    
    deinit {
        print("destroyed!")
    }
}

struct ContentView: View {
        
    var body: some View {
        VStack {
            Button {
                var homework: Task? = Task(name: "homework", level: "hard")
                homework = nil
            }label: {
                Text("Click!")
            }
        }
    }
}

#Preview {
    ContentView()
}
