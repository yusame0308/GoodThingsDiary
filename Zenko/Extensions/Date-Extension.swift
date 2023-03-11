//
//  Date-Extension.swift
//  Zenko
//
//  Created by 小原宙 on 2023/03/09.
//

import Foundation

extension Date {
    
    func toString() -> String {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.timeZone = TimeZone(identifier: "Asia/Tokyo")
        formatter.locale = Locale(identifier: "ja_JP")
        formatter.dateFormat = "M月d日 H時mm分"
        
        return formatter.string(from: self)
    }
    
}
