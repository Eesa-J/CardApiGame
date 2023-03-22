//
//  ContentView.swift
//  CardApiGame
//
//  Created by Jaswal, Eesa (SPH) on 22/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let api = DeckOfCardsAdapter()
        Button("Get new deck of cards") {
            api.drawACard()
        }
            .padding()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
