//
//  ViewStyles.swift
//  Warikan
//
//  Created by cmStudent on 2025/03/02.
//

import Foundation
import SwiftUI

extension View {
    func homeBtnStyle() -> some View {
        self
            .foregroundColor(.white)
            .fontWeight(.bold)
            .padding()
            .background(.orange)
            .cornerRadius(15)
    }
}

extension View {
    func txtFieldStyle() -> some View {
        self
            .padding()
            .frame(width:250)
            .border(.gray)
    }
}

extension View {
    func titleStyle() -> some View {
        self
            .foregroundColor(.white)
            .font(.title)
            .fontWeight(.bold)
            .padding(.vertical)
            .background(.orange)
            .cornerRadius(1)
    }
}
