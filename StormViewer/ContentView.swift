//
//  ContentView.swift
//  StormViewer
//
//  Created by Ricky David Groner II on 12/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedImage: Int?
    
    var body: some View {
        NavigationSplitView {
            List(0..<10, selection: $selectedImage) { number in
                Text("Storm \(number + 1)")
            }
            .frame(width: 150)
        } detail: {
            if let selectedImage = selectedImage {
                Image(String(selectedImage)).resizable().scaledToFit()
            } else {
                Text("Please select an image")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}

#Preview {
    ContentView()
}
