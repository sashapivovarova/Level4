//
//  ContentView.swift
//  Level4
//
//  Created by Anastasia Grey on 2023/12/12.
//

import SwiftUI

struct ContentView: View {
    
    let imageURLString = "https://yt3.ggpht.com/pdTrKuYp6faTiDVxyNqzYDRu23o4NojHEjx5vZjBH8kYTIyRTJDrH_uTQVRLIJ-qV0Zb6DxdGQ=s900-c-k-c0x00ffffff-no-rj"
    
    var body: some View {
        VStack {
            Image(systemName: "bolt")
                .data(url: URL(string: imageURLString)!)
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            AsyncImage(url: URL(string: imageURLString)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
        }
    }
}

extension Image {
    func data(url: URL) -> Self {
        if let data = try? Data(contentsOf: url) {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        }
        return self
            .resizable()
    }
}

#Preview {
    ContentView()
}
