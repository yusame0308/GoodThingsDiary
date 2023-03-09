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
            setTextsFromModel()
        }
    }
    
    private let textBodyLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.backgroundColor = .red
        return label
    }()
    
    private let userNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.backgroundColor = .systemYellow
        return label
    }()
    
    private let createdAtLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.backgroundColor = .systemCyan
        return label
    }()
    
    private let likesLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.backgroundColor = .systemPink
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
        
        addSubview(textBodyLabel)
        addSubview(userNameLabel)
        
        textBodyLabel.anchor(top: self.topAnchor, centerX: centerXAnchor, width: 200, height: 20)
        userNameLabel.anchor(top: textBodyLabel.bottomAnchor, centerX: centerXAnchor, width: 200, height: 20)
    }
    
    func setModel(post: Post) {
        self.post = post
    }
    
    private func setTextsFromModel() {
        textBodyLabel.text = post.text
        userNameLabel.text = post.userName
        createdAtLabel.text = post.createdAt.toString()
        likesLabel.text = String(post.likes)
    }
    
}
