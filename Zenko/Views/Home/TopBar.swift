//
//  TopBar.swift
//  Zenko
//
//  Created by 小原宙 on 2023/03/13.
//

import UIKit

class TopBar: UIView {
    
    private let reloadButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "arrow.clockwise", withConfiguration: UIImage.SymbolConfiguration(pointSize: 20, weight: .bold)), for: .normal)
        button.tintColor = .white
        return button
    }()
    
    private let addButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.attributedTitle = AttributedString("新規投稿", attributes: AttributeContainer([.font: UIFont.systemFont(ofSize: 14, weight: .medium)]))
        config.image = UIImage(systemName: "plus", withConfiguration: UIImage.SymbolConfiguration(pointSize: 12, weight: .black))
        config.imagePadding = 2.0
        config.imagePlacement = .trailing
        config.baseForegroundColor = Constant.kPinkUIColor
        config.baseBackgroundColor = .white
        config.cornerStyle = .capsule
        config.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 15, bottom: 8, trailing: 15)
        let button = UIButton(configuration: config)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        setupLayout()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        backgroundColor = Constant.kPinkUIColor
        
        let baseStackView = UIStackView(arrangedSubviews: [reloadButton, addButton])
        baseStackView.axis = .horizontal
        baseStackView.alignment = .center
        baseStackView.distribution = .equalSpacing
        
        addSubview(baseStackView)
        
        baseStackView.anchor(top: self.topAnchor, bottom: self.bottomAnchor, left: self.leftAnchor, right: self.rightAnchor, topPadding: 40, leftPadding: 35, rightPadding: 20)
    }
    
}
