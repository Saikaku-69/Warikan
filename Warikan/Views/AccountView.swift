//
//  AccountView.swift
//  Warikan
//
//  Created by cmStudent on 2025/03/03.
//

import SwiftUI

struct AccountView: View {
    @State var image: UIImage?
    @State var showEdit:Bool = false
    @State private var userModel: UserModel?
    
    @State private var showImagePickerDialog = false
    @State private var showCamera: Bool = false
    @State private var showLibrary: Bool = false
    //@Environment(\dismiss) private var dismiss
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
//            HStack {
//                Text("名前")
//                    .frame(width: 100)
//                    .border(.green)
//                
//                Text("\(userModel?.name ?? "User")")
//                    .frame(width:100)
//                    .border(.green)
//                
//            }
            
        }
        .sheet(isPresented: $showEdit) {
            
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
