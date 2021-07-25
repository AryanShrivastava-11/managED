//
//  managEDApp.swift
//  managED
//
//  Created by Aryan Shrivastava on 22/07/21.
//

import SwiftUI
import Firebase

@main
struct managEDApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView().environmentObject(UserStore())
        }
    }
    
}
