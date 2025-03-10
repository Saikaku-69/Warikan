//
//  AccountView.swift
//  Warikan
//
//  Created by cmStudent on 2025/03/03.
//

import SwiftUI

struct AccountView: View {
    
    @State var image: UIImage?
    @State private var showImagePickerDialog = false
    @State private var showCamera: Bool = false
    @State private var showLibrary: Bool = false
    
    @EnvironmentObject var loginVM: LoginViewModel
    
    var body: some View {
        
        VStack {
            
            if let icon = loginVM.userModel.icon {
                Image(uiImage: icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .clipShape(Circle())
            } else {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.gray)
            }
            
            Button(action: {
                showImagePickerDialog = true
            }) {
                Text("編集する")
                    .underline()
            }
            
            HStack {
                Text("名前:")
                Spacer()
                Text(loginVM.userModel.name ?? "未設定")
            }
            .userInfoStyle()
            
            
            HStack {
                Text("メール:")
                Spacer()
                Text(loginVM.userModel.mailAdress)
            }
            .userInfoStyle()
            
        }
        .sheet(isPresented: $showLibrary) {
            PhotoLibraryPickerView(image: Binding(
                get: { loginVM.userModel.icon },
                set: { loginVM.userModel.icon = $0 }
            ))
        }
        .fullScreenCover(isPresented: $showCamera) {
            CameraCaptureView(image: $image)
                .ignoresSafeArea()
        }
        .confirmationDialog("",isPresented: $showImagePickerDialog,titleVisibility: .hidden) {
            Button {
                showCamera = true
            } label: {
                Text("カメラで撮る")
            }
            Button {
                showLibrary = true
            } label: {
                Text("アルバムから選ぶ")
            }
            Button("キャンセル", role: .cancel) {
                showImagePickerDialog = false
            }
        }
    }
}

#Preview {
    AccountView()
}
