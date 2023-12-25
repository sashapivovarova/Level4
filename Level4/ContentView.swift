//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

class goodStudent {
    let name: String
    weak var grade: Grade?
    
    init(name: String, grade: Grade? = nil) {
        print("goodStudent is started")
        self.name = name
        self.grade = grade
    }
    
    deinit {
        print("goodStudent is done")
    }
}

class Grade {
    let title: String
    weak var topStudent: goodStudent?
    
    init(title: String, topStudent: goodStudent? = nil) {
        print("Grade is stared")
        self.title = title
        self.topStudent = topStudent
    }
    
    deinit {
        print("Grade is done")
    }
}

struct ContentView: View {
        
    var body: some View {
        VStack {
            Button {
                var sasha: goodStudent? = goodStudent(name: "Sasha")
                var level: Grade? = Grade(title: "Math")
                print("sasha ARC : \(CFGetRetainCount(sasha))")
                print("grade ARC : \(CFGetRetainCount(level))")
                
                sasha?.grade = level
                level?.topStudent = sasha
                
                print("sasha ARC : \(CFGetRetainCount(sasha))")
                print("grade ARC : \(CFGetRetainCount(level))")
            } label: {
                Text("Click!")
            }
        }
    }
}

#Preview {
    ContentView()
}
