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
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        addSubview(textLabel)
        textLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
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
        addSubview(showMoreLabel)
        showMoreLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        showMoreLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        showMoreLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
