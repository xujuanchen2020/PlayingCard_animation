//
//  ViewController.swift
//  PlayingCard_practice
//
//  Created by qiurong chen on 11/9/20.
//  Copyright © 2020 Xujuan Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var deck = PlayingCardDeck()

    @IBOutlet var cardViews: [PlayingCardView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var cards = [PlayingCard]()
        for _ in 1...((cardViews.count + 1)/2) {
            if let card = deck.draw() {
                cards += [card, card]
            }
            
        }
        
        for cardView in cardViews {
            cardView.isFaceUp = true
            let card = cards.remove(at: cards.count.arc4random)
            cardView.rank = card.rank.order
            cardView.suit = card.suit.rawValue
        }
    }
}

