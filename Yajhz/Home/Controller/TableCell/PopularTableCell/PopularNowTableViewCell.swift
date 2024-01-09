//
//  PopularNowTableViewCell.swift
//  Yajhz
//
//  Created by kariman eltawel on 09/01/2024.
//

import UIKit

class PopularNowTableViewCell: UITableViewCell {
    
    @IBOutlet weak var popularCollection: UICollectionView!{
        didSet{
            popularCollection.delegate = self
            popularCollection.dataSource = self
            popularCollection.register(UINib(nibName: "PopularCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PopularCollectionViewCell")
        }
    }
    
    var popularData:HomePopular?
    var favPressed:((_ index: Int)->())?

}
