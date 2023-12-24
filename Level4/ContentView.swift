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
                print("ARC Count : \(CFGetRetainCount(Task(name: "homework", level: "hard")))")
                var homework: Task? = Task(name: "homework", level: "hard")
                print("ARC Count : \(CFGetRetainCount(homework))")
                var homework2 = homework
                print("ARC Count : \(CFGetRetainCount(homework))")
                homework = nil
                if homework != nil {
                    print("ARC Count : \(CFGetRetainCount(homework))")
                } else {
                    print("ARC Count : 0")
                }
            }label: {
                Text("Click!")
            }
        }
    }
}

#Preview {
    ContentView()
}
