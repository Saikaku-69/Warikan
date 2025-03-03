//
//  LoginView.swift
//  Warikan
//
//  Created by cmStudent on 2025/03/02.
//

import SwiftUI

struct LoginView: View {
    
    @State private var mail:String = ""
    @State private var userModel: UserModel?
    @StateObject private var loginVM = LoginViewModel()
    
    var body: some View {
        
        VStack {
            Text("登録画面")
                .font(.title)
            
            Text("メールを入力してください")
            TextField("@jec.ac.jp", text:$mail)
                .txtFieldStyle()
            Text(loginVM.errorMessage)
                .foregroundColor(.red)
            
            Button(action: {
                if !mail.isEmpty && loginVM.isValidEmail(mail) {
                    userModel = UserModel(mailAdress: mail)
                    loginVM.errorMessage = ""
                    mail = ""
                    loginVM.showContentView = true
                } else {
                    loginVM.errorMessage = "error!"
                }
            }) {
                Text("ログイン")
                    .homeBtnStyle()
            }.padding(.top)
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .fullScreenCover(isPresented: $loginVM.showContentView) {
            ContentView()
        }
    }
}

#Preview {
    LoginView()
}
