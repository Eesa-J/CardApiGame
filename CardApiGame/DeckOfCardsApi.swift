//
//  DeckOfCardsApi.swift
//  CardApiGame
//
//  Created by Jaswal, Eesa (SPH) on 22/03/2023.
//

import Foundation

class DeckOfCardsAdapter {
    let baseUrl = "https://deckofcardsapi.com/api/"
    
    public func getNewDeck() {
        
       let path = baseUrl + "deck/new/"
        
        guard let url = URL(string: path)
        else {
            print("Invalid URL")
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let data = data {
                if let response = self.parseJson(json: data) {
                    print(response)
                } else {
                    print("Error getting response")
                }
            }
        }.resume()
    }
    
    public func drawACard() {
        
       let path = baseUrl + "deck/y094nbj8hfv1/draw/?count=1"
        
        guard let url = URL(string: path)
        else {
            print("Invalid URL")
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let data = data {
                if let response = self.parseJson(json: data) {
                    print(response)
                } else {
                    print("Error getting response")
                }
            }
        }.resume()
    }
    
    func parseJson(json: Data) -> DeckResponse? {
        let decoder = JSONDecoder()
        
        if let deckResponse = try? decoder.decode(DeckResponse.self, from: json) {
            return deckResponse
        } else {
            print("Error Decoding JSON")
            return nil
        }
    }
}
