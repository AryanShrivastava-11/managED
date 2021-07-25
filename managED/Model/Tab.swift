//
//  Tab.swift
//  managED
//
//  Created by Aryan Shrivastava on 22/07/21.
//

import SwiftUI

//Tab model with tab items
struct Tab: Identifiable {
    var id = UUID()
    var tab: String
    var foods: [Food]
}

var tabItems = [
    Tab(tab: "Order Again", foods: foods.shuffled()),
    Tab(tab: "Picked for You", foods: foods.shuffled()),
    Tab(tab: "Starters", foods: foods.shuffled()),
    Tab(tab: "History", foods: foods.shuffled())
]

