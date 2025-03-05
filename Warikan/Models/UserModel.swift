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
    let mailAdress:String
    
    init(icon: UIImage? = nil, name: String? = nil, mailAdress: String) {
        self.icon = icon
        self.name = name
        self.mailAdress = mailAdress
    }
}

struct UserInfoModel {
    var name:String?
    var genda:String?
    var mail:String
    
    init(name: String, genda: String, mail: String) {
        self.name = name
        self.genda = genda
        self.mail = mail
    }
}
