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
    @State private var showImagePickerDialog = false
    @State private var showCamera: Bool = false
    @State private var showLibrary: Bool = false
    
    var body: some View {
        
        VStack {
            
            if let image {
                Image(uiImage: image)
            } else {
                Image(systemName: "person.circle")
                    .font(.system(size:100))
            }
            
            Button(action: {
                showImagePickerDialog = true
            }) {
                Text("編集する")
                    .underline()
            }
            
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
