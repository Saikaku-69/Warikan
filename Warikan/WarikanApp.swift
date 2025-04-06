//
//  WarikanApp.swift
//  Warikan
//
//  Created by cmStudent on 2025/03/01.
//

import SwiftUI
import FirebaseCore

@main
struct WarikanApp: App {
    
    @StateObject private var loginViewModel = LoginViewModel()
    
    init() {
        // 初始化 Firebase
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
                .environmentObject(loginViewModel)
        }
    }
}
