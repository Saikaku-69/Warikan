//
//  LoginView.swift
//  Warikan
//
//  Created by cmStudent on 2025/03/02.
//

import SwiftUI

struct LoginView: View {
    @State private var mail:String = ""
    @State private var password:String = ""
    var body: some View {
        VStack {
            Text("登録画面")
                .font(.title)
            Text("メールを入力してください")
            TextField("@jec.ac.jp", text:$mail)
                .txtFieldStyle()
            Text("暗証番号を入力してください")
            TextField("6桁", text: $password)
                .txtFieldStyle()
            Button(action: {
                
            }) {
                Text("ログイン")
                    .homeBtnStyle()
            }
            .padding(.top)
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    LoginView()
}
