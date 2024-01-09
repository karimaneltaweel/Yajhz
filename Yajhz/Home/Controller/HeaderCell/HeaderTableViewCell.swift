//
//  HeaderTableViewCell.swift
//  ElectroJA
//
//  Created by kariman eltawel on 25/10/2023.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var viewAllBtn: UIButton!
    @IBOutlet weak var headerName: UILabel!
    var viewPressed:(()->())?
    
    @IBAction func viewAllPressed(_ sender: Any) {
        viewPressed?()
    }
  
}
