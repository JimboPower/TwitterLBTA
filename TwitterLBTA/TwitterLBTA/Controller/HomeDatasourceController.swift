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
        
        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if let user = self.datasource?.item(indexPath) as? User {
            
            let approximateWIthBioTextView = view.frame.width - 12 - 50 - 8
            let size = CGSize(width: approximateWIthBioTextView, height: 1000)
            let estimatedFrame = NSString(string: user.bioText).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes:
                [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)], context: nil)
            return CGSize(width: view.frame.width, height: estimatedFrame.height + 66)
        }
        
        return CGSize(width: view.frame.width, height: 1000)

    }
    
}
