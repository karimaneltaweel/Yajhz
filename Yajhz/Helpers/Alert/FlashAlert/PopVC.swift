//
//  PopVC.swift
//  Popyup
//
//  Created by Omar Adel on 12/11/19.
//  Copyright © 2019 z510. All rights reserved.
//

import UIKit

class PopVC: UIViewController {
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var PopView: UIView!
    
    var alertBody: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PopView.clipsToBounds = true
        PopView.layer.cornerRadius = 5
        bodyLabel.text = alertBody
        PopView.layer.masksToBounds = false;
        PopView.layer.shadowOffset = CGSize(width: -2, height: 3)
        PopView.layer.shadowRadius = 2;
        PopView.layer.shadowOpacity = 0.2;
    }
}
