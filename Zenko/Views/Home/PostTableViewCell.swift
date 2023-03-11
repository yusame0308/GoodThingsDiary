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
        label.numberOfLines = 0
        return label
    }()
    
    private let userNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let createdAtLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    private let likesButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.systemPink, for: .normal)
        return button
    }()
    
    private let othersButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        button.tintColor = .systemGray
        return button
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
        
        let stackViewHeight: CGFloat = 20
        
        let topStackView = UIStackView(arrangedSubviews: [userNameLabel, othersButton])
        topStackView.axis = .horizontal
        topStackView.alignment = .top
        topStackView.distribution = .equalSpacing
        
        let bottomStackView = UIStackView(arrangedSubviews: [createdAtLabel, likesButton])
        bottomStackView.axis = .horizontal
        bottomStackView.alignment = .bottom
        bottomStackView.distribution = .equalSpacing
        
        let baseStackView = UIStackView(arrangedSubviews: [topStackView, textBodyLabel, bottomStackView])
        baseStackView.axis = .vertical
        baseStackView.alignment = .center
        baseStackView.spacing = 10
        
        addSubview(baseStackView)
        
        topStackView.anchor(left: baseStackView.leftAnchor, right: baseStackView.rightAnchor, height: stackViewHeight)
        bottomStackView.anchor(left: baseStackView.leftAnchor, right: baseStackView.rightAnchor, height: stackViewHeight)
        textBodyLabel.anchor(left: baseStackView.leftAnchor, right: baseStackView.rightAnchor, leftPadding: 2, rightPadding: 2)
        baseStackView.anchor(top: self.topAnchor, bottom: self.bottomAnchor, left: self.leftAnchor, right: self.rightAnchor, topPadding: 15, bottomPadding: 15, leftPadding: 30, rightPadding: 30)
    }
    
    func setModel(post: Post) {
        self.post = post
    }
    
    private func setTextsFromModel() {
        textBodyLabel.text = post.text
        userNameLabel.text = post.userName
        createdAtLabel.text = post.createdAt.toString()
        likesButton.setTitle(String(post.likes), for: .normal)
    }
    
}
