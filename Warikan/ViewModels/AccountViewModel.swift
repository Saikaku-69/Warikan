//
//  UserViewModel.swift
//  Warikan
//
//  Created by cmStudent on 2025/03/03.
//

import Foundation

class AccountViewModel:ObservableObject {
    @Published var profileController:Bool = false
    
    func showProfile() {
        profileController = true
    }
}
