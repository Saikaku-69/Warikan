//
//  AccountView.swift
//  Warikan
//
//  Created by cmStudent on 2025/03/03.
//

import SwiftUI

struct AccountView: View {
    
    @State var image: UIImage?
    @State private var userModel: UserModel?
    @State private var user = UserModel(mailAdress: "")
    @State private var showImagePickerDialog = false
    @State private var showCamera: Bool = false
    @State private var showLibrary: Bool = false
    @State private var userInfo: UserInfoModel?
    
    var body: some View {
        
        VStack {
            
            if let icon = user.icon {
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
            
            Text("名前：")
            Text("性別：")
            Text("Mail：")
            
        }
        .sheet(isPresented: $showLibrary) {
            PhotoLibraryPickerView(image: $user.icon)
        }
        .fullScreenCover(isPresented: $showCamera) {
            CameraCaptureView(image: $image)
                .ignoresSafeArea()
        }
        .confirmationDialog(
                    "",
                    isPresented: $showImagePickerDialog,
                    titleVisibility: .hidden
                ) {
                    Button {
                        print(showCamera)
                        showCamera = true
                        print(showCamera)
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
