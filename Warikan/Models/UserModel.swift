//
//  MemberModels.swift
//  Warikan
//
//  Created by cmStudent on 2025/03/03.
//

import Foundation
import SwiftUI

struct UserModel {
    
    let id = UUID()
    var icon:UIImage?
    var name:String?
    var mailAdress:String
    
    init(icon: UIImage? = nil, name: String? = nil, mailAdress: String) {
        self.icon = icon
        self.name = name
        self.mailAdress = mailAdress
    }
}
