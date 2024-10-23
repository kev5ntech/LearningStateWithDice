//
//  ContentView.swift
//  DiceView
//
//  Created by Kevin Wong on 10/22/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfPips: Int = 4
    var body: some View {
        Image(systemName: "die.face.\(numberOfPips)")
            .resizable()
            .frame(width: 100, height: 100)
        
        Button("Roll") {
            numberOfPips = Int.random(in: 1...6)
        }
    }
}

#Preview {
    ContentView()
}
