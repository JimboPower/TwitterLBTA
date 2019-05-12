//
//  HomeDatasourceController.swift
//  TwitterLBTA
//
//  Created by Edoardo de Cal on 07/05/2019.
//  Copyright © 2019 Edoardo de Cal. All rights reserved.
//

import LBTAComponents


class HomeDatasourceController: DatasourceController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigateBarItems()
        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource
        
    }
    
    private func setupNavigateBarItems() {
        
        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "Twitter_Logo_Blue"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView  = titleImageView
        
        let followButton = UIButton(type: .system)
        followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        followButton.setImage(UIImage(named: "follow")?.withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.imageView?.contentMode = .scaleAspectFit
        navigationItem.leftBarButtonItem  = UIBarButtonItem(customView: followButton)
        
        
        let composeButton = UIButton(type: .system)
        composeButton.setImage(UIImage(named: "compose")?.withRenderingMode(.alwaysOriginal), for: .normal)
        composeButton.imageView?.contentMode = .scaleAspectFit
        
        let searchButton = UIButton(type: .system)
        searchButton.setImage(UIImage(named: "search")?.withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.imageView?.contentMode = .scaleAspectFit
        
        navigationItem.rightBarButtonItems  = [UIBarButtonItem(customView: composeButton), UIBarButtonItem(customView: searchButton)]


    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if let user = self.datasource?.item(indexPath) as? User {
            
            let approximateWIthBioTextView = view.frame.width - 12 - 50 - 8 - 2
            let size = CGSize(width: approximateWIthBioTextView, height: 1000)
            let estimatedFrame = NSString(string: user.bioText).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes:
                [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)], context: nil)
            return CGSize(width: view.frame.width, height: estimatedFrame.height + 75)
        }
        return CGSize(width: view.frame.width, height: 1000)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    
}
