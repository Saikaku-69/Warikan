//
//  LoginView.swift
//  Warikan
//
//  Created by cmStudent on 2025/03/02.
//

import SwiftUI

struct LoginView: View {
    
    @State private var userModel: UserModel?
    @EnvironmentObject var loginVM: LoginViewModel
    
    var body: some View {
        
        VStack {
            Text("登録画面")
                .font(.title)
                .padding(.bottom)
            
            Text("メールを入力してください")
            TextField("@jec.ac.jp", text:$loginVM.mail)
                .txtFieldStyle()
            
            Text(loginVM.errorMessage)
                .foregroundColor(.red)
                .frame(height:50)
            
            Button(action: {
                loginVM.login()
            }) {
                Text("ログイン")
                    .homeBtnStyle()
            }.padding(.top)
            
            Button(action: {
                loginVM.forceLogin()
            }) {
                Text("管理人登録")
                    .homeBtnStyle()
            }
            
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
