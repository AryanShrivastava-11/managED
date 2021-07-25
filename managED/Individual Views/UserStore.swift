//
//  UserStore.swift
//  managED
//
//  Created by Aryan Shrivastava on 24/07/21.
//

import SwiftUI
import Combine

class UserStore: ObservableObject {
    @Published var isLogged: Bool = UserDefaults.standard.bool(forKey: "isLogged"){
        didSet{
            UserDefaults.standard.set(isLogged, forKey: "isLogged")
        }
    }
    @Published var showLogin = false
}
