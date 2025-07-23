//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Riya Shankaran on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    // @State is a property wrapper that monitors changes and tells SwiftUI to update the view when the var is modified
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit Name") {
                textTitle = "Welcome, \(name)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
