//
//  LoginViewModel.swift
//  Warikan
//
//  Created by cmStudent on 2025/03/02.
//

import Foundation

class LoginViewModel:ObservableObject {
    
    @Published var errorMessage:String = ""
    @Published var showContentView:Bool = false
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@jec.ac.jp"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: email)
    }
    
}
