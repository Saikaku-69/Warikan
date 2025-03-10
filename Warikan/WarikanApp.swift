//
//  WarikanApp.swift
//  Warikan
//
//  Created by cmStudent on 2025/03/01.
//

import SwiftUI

@main
struct WarikanApp: App {
    
    @StateObject private var loginViewModel = LoginViewModel()
    
    var body: some Scene {
        WindowGroup {
            LoginView()
                .environmentObject(loginViewModel)
        }
    }
}
