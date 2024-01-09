//
//  alertDone.swift
//  Popyup
//
//  Created by Omar Adel on 12/12/19.
//  Copyright © 2019 z510. All rights reserved.
//

import UIKit

class alertDone: UIViewController {

    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var popView: UIView!
    
    var body : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        popView.clipsToBounds = true
        popView.layer.cornerRadius = 5
        popView.layer.masksToBounds = false;
        popView.layer.shadowOffset = CGSize(width: -2, height: 3)
        popView.layer.shadowRadius = 2;
        popView.layer.shadowOpacity = 0.2;
        bodyLabel.text = body
    }
    
    @IBAction func DoneButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
