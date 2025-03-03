//
//  ContentView.swift
//  Warikan
//
//  Created by cmStudent on 2025/03/01.
//

import SwiftUI

struct ContentView: View {
    
    let width:Double = UIScreen.main.bounds.width
    @Environment(\.dismiss) private var dismiss
    @State private var EditUserProfile:Bool = false
    
    var body: some View {
        
        ZStack {
            Color.white.ignoresSafeArea()
            VStack {
                Spacer()
                Image("BeerDouble")
                    
                Button(action: {
                    EditUserProfile = true
                }) {
                    Text("グループリスト")
                        .homeBtnStyle()
                }
                Spacer()
                Button(action: {
                    dismiss()
                }) {
                    Text("Logout")
                        .foregroundColor(.gray)
                        .underline()
                }
            }
            .overlay(
                Text("Double A")
                    .frame(width:width)
                    .titleStyle(),
                alignment: .top
            )
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .fullScreenCover(isPresented: $EditUserProfile) {
                AccountView()
            }
    }
}

#Preview {
    ContentView()
}
