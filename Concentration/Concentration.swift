//
//  Concentration.swift
//  Concentration
//
//  Created by Hebert Falcão on 15/04/2018.
//  Copyright © 2018 Hebert Falcão. All rights reserved.
//

import Foundation

class Concentration {
    
    var cards = [Card]()
    
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    func chooseCard (at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil
            } else {
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
    }

    init(numberOfPairsOfCards: Int) {
        // "_" seria uma variavel, mas como ela não é utilizada, podemos colocar "_" para informar que será ignorada
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
    }
    
}
