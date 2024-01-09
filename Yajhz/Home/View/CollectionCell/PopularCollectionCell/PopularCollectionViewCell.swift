//
//  PopularCollectionViewCell.swift
//  Yajhz
//
//  Created by kariman eltawel on 09/01/2024.
//

import UIKit
import Cosmos
import SDWebImage

class PopularCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var producTitle: UILabel!
    @IBOutlet weak var productCosmos: CosmosView!
    @IBOutlet weak var favouriteBtn: UIButton!
    @IBOutlet weak var productRate: UILabel!
    @IBOutlet weak var distence: UILabel!
    //-------------------
    var favPressed:(()->())?
    
    func setUp(popular:Datum){
        productImg.sd_setImage(with: URL(string: popular.image ?? ""))
        producTitle.text = popular.name ?? ""
        productRate.text = popular.rate ?? ""
        productCosmos.rating = Double(popular.rate ?? "") ?? 0.0
        distence.text = "3.4 km"
        favouriteState(isFav:popular.is_favorite ?? false)
    }
    
    
    func favouriteState(isFav:Bool){
        if isFav{
            favouriteBtn.setImage(UIImage(named: "fav"), for: .normal)
        }else{
            favouriteBtn.setImage(UIImage(named: "unfav"), for: .normal)
        }
    }
    
    @IBAction func favouritePressed(_ sender: Any) {
        favPressed?()
    }
    
}
