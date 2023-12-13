//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

enum numberError: Error {
    case dividedByZero
}

struct ContentView: View {
    
    @State var number: Int = 0
    @State var inputNumber: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("10 Divide with ")
                TextField("X",
                          text: $inputNumber)
            }
            Text(number.description)
            Button {
                do {
                    number = try divideHundred(by: inputNumber)
                } catch {
                    print("Error : \(error)")
                }
            } label: {
                Text("Divide!")
            }
        }
    }
    
    private func divideHundred(by inputNumber: String) throws -> Int {
        if inputNumber == "0" {
            throw numberError.dividedByZero
        } else {
            return 100 / (Int(inputNumber) ?? 0)
        }
    }
}

#Preview {
    ContentView()
}
