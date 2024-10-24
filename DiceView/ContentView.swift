//
//  ContentView.swift
//  DiceView
//
//  Created by Kevin Wong on 10/22/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1

    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle
                    .lowercaseSmallCaps()
                    
                )
                .foregroundStyle(.white)
            HStack {
                ForEach(1...numberOfDice, id: \.description) { _ in
                                DiceView()
                            }
            }
            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    withAnimation {
                        numberOfDice-=1
                    }
                }.disabled(numberOfDice == 1)
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    withAnimation {
                        numberOfDice+=1
                    }
                }.disabled(numberOfDice == 5)
            }.padding()
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.mainBlue)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
