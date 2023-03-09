//
//  Post.swift
//  Zenko
//
//  Created by 小原宙 on 2023/03/07.
//

import Foundation

struct Post {
    var id: String = UUID().uuidString
    var userId: String = "device-user-id"
    var userName: String = "匿名"
    var text: String
    var likes: Int = 0
    var createdAt: Date = .now
}

let testPosts = [
    Post(userName: "太郎", text: "テストテキスト１", createdAt: .now + 10),
    Post(userName: "健太", text: "テストテキスト２"),
    Post(userName: "康太", text: "テストテキスト３"),
    Post(userName: "愛子", text: "テストテキスト４"),
    Post(userName: "洋子", text: "テストテキスト５"),
    Post(userName: "美沙子", text: "テストテキスト６"),
    Post(userName: "翔平", text: "テストテキスト７"),
    Post(userName: "裕一", text: "テストテキスト８"),
    Post(userName: "一真", text: "テストテキスト９"),
    Post(userName: "家康", text: "テストテキスト１０"),
]
