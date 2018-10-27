//
//  Card.swift
//  Concentration
//
//  Created by Hebert Falcão on 15/04/2018.
//  Copyright © 2018 Hebert Falcão. All rights reserved.
//

import Foundation

struct Card {
    
    var isFaceUp = false;
    
    var isMatched = false;
    
    var identifier : Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return Card.identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }

}
