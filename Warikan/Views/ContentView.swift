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
    @StateObject var accountVM = AccountViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                Color.white.ignoresSafeArea()
                
                VStack {
                    
                    Spacer()
                    
                    Image("BeerDouble")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:100)
                    
                    Button(action: {
                        print(accountVM.profileController)
                        accountVM.showProfile()
                        print(accountVM.profileController)
                    }) {
                        Text("プロフィール")
                            .homeBtnStyle()
                    }
                    
                    Button(action: {
                        
                    }) {
                        Text("グループを作成する")
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
            }
            .navigationDestination(isPresented: $accountVM.profileController) {
                AccountView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

#Preview {
    ContentView()
}
