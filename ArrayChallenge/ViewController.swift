//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Our blank piece of paper
    var shoppingList: [String] = []
    
    // Quantity of items
    var quantityOfItems: [Int] = [6, 4, 12, 4]
    
    // Name of items
    var nameOfItems: [String] = ["Bananas", "Apples", "Eggs", "Rolls"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // After you're done implementing your method, call on it here. You can remove this example below
        
        shoppingList = makeShoppingListWithItems(nameOfItems, quantityOfItems: quantityOfItems)
        
    }
    
    // This is just an example - you can remove this.
    func thisIsAnExample() {
        print("This ist just an example, you can remvove this.")
    }
    
    
    func makeShoppingListWithItems(itemsNeeded: [String], quantityOfItems: [Int]) -> [String]{
        var newList: [String] = []
        for (index, item) in itemsNeeded.enumerate() {
            let combinedItem: String = "\(index + 1). \(quantityOfItems[index]) \(item)"
            newList.append(combinedItem)
        }
        return newList
    }


}