//
//  CategoryCollectionViewCell.swift
//  Yajhz
//
//  Created by kariman eltawel on 09/01/2024.
//

import UIKit
import SDWebImage

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryImg: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func setUp(category:Datum){
        categoryImg.sd_setImage(with: URL(string: category.image ?? ""))
        categoryTitle.text = category.nameEn ?? ""
    }
}
