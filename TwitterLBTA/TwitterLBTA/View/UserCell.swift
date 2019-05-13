//
//  UserCell.swift
//  TwitterLBTA
//
//  Created by Edoardo de Cal on 11/05/2019.
//  Copyright © 2019 Edoardo de Cal. All rights reserved.
//

import UIKit
import LBTAComponents

class UserCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet{
            guard let user = datasourceItem as? User else {return}
            nameLabel.text = user.name
            userNameLabel.text = user.username
            bioTextView.text = user.bioText
            profileImageView.image = user.profileImage
        }
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "TestTestTest"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "Foto Edoardo de Cal")
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "@edoardodc"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor(r: 130, g: 130, b: 130)
        return label
    }()
    
    let bioTextView: UITextView = {
        let textView = UITextView()
        textView.text = "iPhone, iPad, iOS Programming Commiunity. Join us to learn Swift, Objective-C"
        textView.font = UIFont.systemFont(ofSize: 15)
        textView.isScrollEnabled = false
        return textView
    }()
    
    let followButton: UIButton = {
        let button = UIButton()
        let image = #imageLiteral(resourceName: "follow")
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.layer.borderColor = UIColor.cyan.cgColor
        button.layer.borderWidth = 1
        button.setTitle("Follow", for: .normal)
        let twitterBlue = UIColor(r: 61, g: 167, b: 244)
        button.setTitleColor(twitterBlue, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setImage(image, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        return button
    }()
    
    let stackViewUserNames: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let stackViewNamesButtons: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 15
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    let stackViewBioText: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 15
        stackView.distribution = .fill
        return stackView
    }()
    
    let stackViewImageProfile: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 15
        stackView.distribution = .fill
        return stackView
    }()
    
    
    override func setupViews() {
        super.setupViews()
        
        backgroundColor = .white
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(userNameLabel)
        addSubview(profileImageView)
        addSubview(bioTextView)
        addSubview(followButton)
        
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0, leftConstant:
            8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        
        userNameLabel.anchor(nameLabel.bottomAnchor, left: profileImageView.rightAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 3, leftConstant:
            8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        bioTextView.anchor(userNameLabel.bottomAnchor, left: profileImageView.rightAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 0, leftConstant:
            0, bottomConstant: 10, rightConstant: 12, widthConstant: 0, heightConstant: 0)
        
        followButton.anchor(self.topAnchor, left: nil, bottom: bioTextView.topAnchor, right: self.rightAnchor, topConstant: 12, leftConstant:
            0, bottomConstant: 12, rightConstant: 12, widthConstant: 120, heightConstant: 34)
        
        
        //StackView
        //        stackViewUserNames.addArrangedSubview(nameLabel)
        //        stackViewUserNames.addArrangedSubview(userNameLabel)
        //        stackViewNamesButtons.addArrangedSubview(stackViewUserNames)
        //        stackViewNamesButtons.addArrangedSubview(followButton)
        //        stackViewBioText.addArrangedSubview(stackViewNamesButtons)
        //        stackViewBioText.addArrangedSubview(bioTextView)
        //        stackViewImageProfile.addArrangedSubview(profileImageView)
        //        stackViewImageProfile.addArrangedSubview(stackViewBioText)
        //        addSubview(stackViewImageProfile)
        //        followButton.translatesAutoresizingMaskIntoConstraints = false
        //        followButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.4).isActive = true
        //        stackViewImageProfile.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        //        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        //        profileImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        //        profileImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //        stackViewImageProfile.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        //        stackViewImageProfile.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        //        stackViewImageProfile.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        //        stackViewImageProfile.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        
        
    }
}
