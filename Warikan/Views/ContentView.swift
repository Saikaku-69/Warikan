//
//  ContentView.swift
//  Warikan
//
//  Created by cmStudent on 2025/03/01.
//

import SwiftUI

struct ContentView: View {
    let width:Double = UIScreen.main.bounds.width
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            VStack {
                Spacer()
                Image("BeerDouble")
                    
                Button(action: {
                    
                }) {
                    Text("グループ作成")
                        .homeBtnStyle()
                }
                Spacer()
                HStack {
                    Button(action: {
                        
                    }) {
                        Text("Login")
                            .foregroundColor(.gray)
                            .underline()
                    }
                    Spacer()
                    Text("Logout")
                        .foregroundColor(.gray)
                        .underline()
                }.frame(width:width/2)
            }
            .overlay(
                Text("Double A")
                    .frame(width:width)
                    .titleStyle(),
                alignment: .top
            )
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
