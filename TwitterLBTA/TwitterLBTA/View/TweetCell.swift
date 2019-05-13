//
//  TweetCell.swift
//  TwitterLBTA
//
//  Created by Edoardo de Cal on 12/05/2019.
//  Copyright © 2019 Edoardo de Cal. All rights reserved.
//

import LBTAComponents

class TweetCell: DatasourceCell {
    
    let messageTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Some text text text text text text text"
        textView.backgroundColor = .red
        textView.translatesAutoresizingMaskIntoConstraints = false

        return textView
    }()
    
    let userName: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "@edoardodecal"
        return label
    }()
    
    let tweetImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "ray_profile_image")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let name: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Edoardo de Cal"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let stackViewLabels: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 4
        return stackView
    }()
    
    let stackViewLabelsAndTweet: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 4
        return stackView
    }()
    
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(tweetImage)
        
        tweetImage.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        

        
        backgroundColor = .white
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
    }
    
}
