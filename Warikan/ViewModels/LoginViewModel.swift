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
    @Published var userModel: UserModel = UserModel(mailAdress: "")
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "^[A-Za-z0-9._%+-]+@jec\\.ac\\.jp$"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: email)
    }
    
    func login() {
        if !mail.isEmpty && isValidEmail(mail) {
            userModel.mailAdress = mail
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
        if !errorMessage.isEmpty {
            errorMessage = ""
        }
        mail = ""
        userModel.mailAdress = "manager@jec.ac.jp"
        showContentView = true
    }
}
