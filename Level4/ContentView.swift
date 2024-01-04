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
            Button {
                let number1 = 3.4
                let number2 = 5.4
                genericCalculator(number1, number2)
            } label: {
                Text("Calculator")
            }
        }
    }
    
    private func genericCalculator<T> (_ first: T, _ second: T) {
        print(first, second)
        
        let temp: T
        var myFirst = first
        var mySecond = second
        temp = myFirst
        myFirst = mySecond
        mySecond = temp
        
        print(myFirst, mySecond)
    }
    
    private func intCalculator(_ first: Int, _ second: Int) -> Int {
        return first + second
    }
    
    private func doubleCalculator(_ first: Double, _ second: Double) -> Double {
        return first + second
    }
    
}

#Preview {
    ContentView()
}
