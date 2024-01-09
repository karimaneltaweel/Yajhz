//
//  TrandingNowTableViewCell.swift
//  Yajhz
//
//  Created by kariman eltawel on 09/01/2024.
//

import UIKit

class TrandingNowTableViewCell: UITableViewCell {
    @IBOutlet weak var trandingCollection: UICollectionView!{
        didSet{
            trandingCollection.delegate = self
            trandingCollection.dataSource = self
            trandingCollection.register(UINib(nibName: "TrendingCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TrendingCollectionViewCell")
        }
    }
    var trandingData:HomeTranding?
    
}
