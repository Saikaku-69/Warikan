//
//  WarikanApp.swift
//  Warikan
//
//  Created by cmStudent on 2025/03/01.
//

import SwiftUI

@main
struct WarikanApp: App {
    var body: some Scene {
        
//        @StateObject var userVM: UserViewModel
//        
//        init(user: UserModel) {
//            _userVM = StateObject(wrappedValue: UserViewModel(user:user))
//        }
        
        WindowGroup {
            LoginView()
//                .environmentObject(userVM)
        }
    }
}
