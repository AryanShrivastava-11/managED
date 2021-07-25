//
//  Food.swift
//  managED
//
//  Created by Aryan Shrivastava on 22/07/21.
//

import SwiftUI

struct Food: Identifiable{
    var id = UUID()
    var title: String
    var description: String
    var price: String
    var image: String
}

var foods = [
    Food(title: "Chocolate Cake", description: "It is a cake flavoured with melted chocolate", price: "$10", image: "randomFace"),
    Food(title: "Cookies", description: "Its a flour based baked cookies. Usually hard, flat and unleavened", price: "$25", image: "randomFace"),
    Food(title: "Sandwich", description: "Need description for this too! All sandwiches are almost same", price: "$5", image: "randomFace"),
    Food(title: "Pizza", description: "There are many types of Pizza. Order it from Dominos", price: "$30", image: "randomFace"),
    Food(title: "French Fries", description: "Ohh not again. who doesnt know what this is ", price: "$100", image: "randomFace")
]
