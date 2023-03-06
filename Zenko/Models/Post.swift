//
//  Post.swift
//  Zenko
//
//  Created by 小原宙 on 2023/03/07.
//

import Foundation

struct Post {
    var text: String = ""
    var user: String
}

let testPosts = [
    Post(text: "テストテキスト１", user: "太郎"),
    Post(text: "テストテキスト２", user: "健太"),
    Post(text: "テストテキスト３", user: "康太"),
    Post(text: "テストテキスト４", user: "愛子"),
    Post(text: "テストテキスト５", user: "洋子"),
    Post(text: "テストテキスト６", user: "美沙子"),
    Post(text: "テストテキスト７", user: "翔平"),
    Post(text: "テストテキスト８", user: "裕一"),
    Post(text: "テストテキスト９", user: "一真"),
    Post(text: "テストテキスト１０", user: "家康"),
]
