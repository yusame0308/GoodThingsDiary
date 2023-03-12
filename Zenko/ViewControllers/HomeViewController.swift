//
//  HomeViewController.swift
//  Zenko
//
//  Created by 小原宙 on 2023/03/05.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let cellId = "cellId"
    
    private lazy var postTableView: UITableView = {
        let tv = UITableView()
        tv.delegate = self
        tv.dataSource = self
        tv.showsVerticalScrollIndicator = false
        tv.separatorInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        tv.separatorColor = .systemGray
        tv.register(PostTableViewCell.self, forCellReuseIdentifier: cellId)
        return tv
    }()
    
    private let topBar = TopBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    private func setupLayout() {
        view.backgroundColor = .white
        
        view.addSubview(topBar)
        view.addSubview(postTableView)
        
        topBar.anchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, height: 90)
        postTableView.anchor(top: topBar.bottomAnchor, bottom: view.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor)
    }

}

extension HomeViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testPosts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! PostTableViewCell
        cell.setModel(post: testPosts[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // cell tap
    }
}

