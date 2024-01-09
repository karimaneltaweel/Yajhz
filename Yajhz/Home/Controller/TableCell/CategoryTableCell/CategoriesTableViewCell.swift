//
//  CategoriesTableViewCell.swift
//  Yajhz
//
//  Created by kariman eltawel on 09/01/2024.
//

import UIKit

class CategoriesTableViewCell: UITableViewCell {

    @IBOutlet weak var categoriesCollection: UICollectionView!{
        didSet{
            categoriesCollection.delegate = self
            categoriesCollection.dataSource = self
            categoriesCollection.register(UINib(nibName: "CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoryCollectionViewCell")
        }
    }
    
    var categoriesData:HomeCategories?

}
