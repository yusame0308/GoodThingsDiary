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
    Post(userName: "太郎", text: "勉強した", createdAt: .now - 700000),
    Post(userName: "健太", text: "駅でおばあちゃんを助けて、道案内もした。お礼にたくさんお菓子をもらって嬉しかった。"),
    Post(userName: "康太", text: "犬の散歩に行った"),
    Post(userName: "愛子", text: "駅でおばあちゃんを助けて、道案内もした。お礼にたくさんお菓子をもらって嬉しかった。駅でおばあちゃんを助けて、道案内もした。お礼にたくさんお菓子をもらって嬉しかった。"),
    Post(userName: "洋子", text: "テストでいい点とってうれしい。ご褒美にお菓子を食べた。"),
    Post(userName: "美沙子", text: "がんばった"),
    Post(userName: "翔平", text: "皿を洗った"),
    Post(userName: "裕一", text: "学校に行った"),
    Post(userName: "一真", text: "ランニングした。"),
    Post(userName: "家康", text: "ご飯作った"),
]
