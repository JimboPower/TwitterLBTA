//
//  HomeDatasourceController+navbar.swift
//  TwitterLBTA
//
//  Created by Edoardo de Cal on 12/05/2019.
//  Copyright © 2019 Edoardo de Cal. All rights reserved.
//

import UIKit
extension HomeDatasourceController {
    func setupNavigateBarItems() {
        setUpReimainingNavItems()
        setUpLeftNavItem()
        setUpRightNavItems()
    }
    
    
    func setUpReimainingNavItems() {
        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "Twitter_Logo_Blue"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView  = titleImageView
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let navBarSeparator = UIView()
        navBarSeparator.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        view.addSubview(navBarSeparator)
        navBarSeparator.anchor(view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0.5)
        
        
    }
    
    
    func setUpRightNavItems() {
        let composeButton = UIButton(type: .system)
        composeButton.setImage(UIImage(named: "compose")?.withRenderingMode(.alwaysOriginal), for: .normal)
        composeButton.imageView?.contentMode = .scaleAspectFit
        
        let searchButton = UIButton(type: .system)
        searchButton.setImage(UIImage(named: "search")?.withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.imageView?.contentMode = .scaleAspectFit
        
        navigationItem.rightBarButtonItems  = [UIBarButtonItem(customView: composeButton), UIBarButtonItem(customView: searchButton)]
    }
    
    func setUpLeftNavItem() {
        let followButton = UIButton(type: .system)
        followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        followButton.setImage(UIImage(named: "follow")?.withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.imageView?.contentMode = .scaleAspectFit
        navigationItem.leftBarButtonItem  = UIBarButtonItem(customView: followButton)
    }
}
