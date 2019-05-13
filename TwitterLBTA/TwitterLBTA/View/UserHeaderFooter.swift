//
//  Cells.swift
//  TwitterLBTA
//
//  Created by Edoardo de Cal on 08/05/2019.
//  Copyright © 2019 Edoardo de Cal. All rights reserved.
//

import LBTAComponents

class UserHeader: DatasourceCell {
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "WHO TO FOLLOW"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = .white
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        addSubview(textLabel)
        textLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 14).isActive = true
        textLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}

class UserFooter: DatasourceCell {
    
    let twitterBlue = UIColor(r: 61, g: 167, b: 244)

    let showMoreLabel: UILabel = {
        let label = UILabel()
        label.text = "Show more"
        label.textColor = UIColor(r: 61, g: 167, b: 244)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        
        let backgroundWhiteBlue = UIView()
        backgroundWhiteBlue.backgroundColor = .white
        
        addSubview(backgroundWhiteBlue)
        backgroundWhiteBlue.translatesAutoresizingMaskIntoConstraints = false
        backgroundWhiteBlue.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        backgroundWhiteBlue.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        backgroundWhiteBlue.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        backgroundWhiteBlue.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15).isActive = true
        
        addSubview(showMoreLabel)
        showMoreLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        showMoreLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 14).isActive = true
    }
}
