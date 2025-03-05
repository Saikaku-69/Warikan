//
//  LoginViewModel.swift
//  Warikan
//
//  Created by cmStudent on 2025/03/02.
//

import Foundation

class LoginViewModel:ObservableObject {
    
    @Published var mail:String = ""
    @Published var errorMessage:String = ""
    @Published var showContentView:Bool = false
    @Published var userModel: UserModel?
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@jec.ac.jp"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: email)
    }
    
    func login() {
        if !mail.isEmpty && isValidEmail(mail) {
            userModel = UserModel(mailAdress: mail)
            if !errorMessage.isEmpty {
                errorMessage = ""
            }
            mail = ""
            showContentView = true
        } else {
            errorMessage = "error!"
        }
    }
    
    func forceLogin() {
        showContentView = true
        if !errorMessage.isEmpty {
            errorMessage = ""
        }
        mail = ""
    }
}
