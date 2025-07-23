//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .padding(.bottom, 60.0)
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
                .padding(.bottom, 380.0)
            
            Button("Submit Name") {
                textTitle = "Welcome, \(name)!"
            


                
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
    }
}

#Preview {
    ContentView()
}
