//
//  Cells.swift
//  TwitterLBTA
//
//  Created by Edoardo de Cal on 08/05/2019.
//  Copyright © 2019 Edoardo de Cal. All rights reserved.
//

import LBTAComponents

class UserHeader: DatasourceCell {
    override func setupViews() {
        super.setupViews()
        backgroundColor = .blue
    }
}

class UserFooter: DatasourceCell {
    override func setupViews() {
        super.setupViews()
        backgroundColor = .green
    }
}


class UserCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet{
            nameLabel.text = datasourceItem as? String
        }
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TestTestTest"
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = .yellow
        addSubview(nameLabel)
        nameLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }
}
