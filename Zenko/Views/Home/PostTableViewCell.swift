//
//  PostTableViewCell.swift
//  Zenko
//
//  Created by 小原宙 on 2023/03/07.
//

import UIKit

func uninitialized<T>() -> T { fatalError() }

class PostTableViewCell: UITableViewCell {
    
    private lazy var post: Post = uninitialized() {
        didSet {
            textLable.text = post.text
            userLable.text = post.userName
        }
    }
    
    private let textLable: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.backgroundColor = .red
        return label
    }()
    
    private let userLable: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.backgroundColor = .systemYellow
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        selectionStyle = .none
        
        addSubview(textLable)
        addSubview(userLable)
        
        textLable.anchor(top: self.topAnchor, centerX: centerXAnchor, width: 200, height: 20)
        userLable.anchor(top: textLable.bottomAnchor, centerX: centerXAnchor, width: 200, height: 20)
    }
    
    func setModel(post: Post) {
        self.post = post
    }
    
}
