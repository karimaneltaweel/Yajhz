//
//  TrendingCollectionViewCell.swift
//  Yajhz
//
//  Created by kariman eltawel on 09/01/2024.
//

import UIKit
import SDWebImage

class TrendingCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var trandingImg: UIImageView!

    func setUp(tranding:Datum){
        trandingImg.sd_setImage(with: URL(string: tranding.image ?? ""))
    }
}
