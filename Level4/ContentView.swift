//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

enum NetworkError: String, Error {
    case forbidden
    case notFound = "Page not found"
    case internalError
    case timeout
}

struct ContentView: View {
    
    @State var response: String = "Unknown"
    @State var inputNumber: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("Server Response")
                TextField(" ",
                          text: $inputNumber)
            }
            Text(response)
            Button {
                do {
                    response = try requestData(by: inputNumber)
                } catch NetworkError.forbidden {
                    print("Unauthorized")
                } catch NetworkError.notFound {
                    print(NetworkError.notFound.rawValue)
                } catch NetworkError.internalError {
                    print("Server has something wrong")
                } catch NetworkError.timeout {
                    print("Try again")
                } catch {
                    print("None")
                }
            } label: {
                Text("Check")
            }
        }
    }
    
    private func requestData(by response: String) throws -> String {
        if response == "200" {
            return "OK"
        } else if response == "403" {
            throw NetworkError.forbidden
        } else if response == "404" {
            throw NetworkError.notFound
        } else if response == "501" {
            throw NetworkError.internalError
        } else {
            throw NetworkError.timeout
        }
    }
}

#Preview {
    ContentView()
}
