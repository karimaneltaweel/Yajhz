//
//  DoneAlert.swift
//  Popyup
//
//  Created by Omar Adel on 12/12/19.
//  Copyright © 2019 z510. All rights reserved.
//

import UIKit

class DoneAlert{
    var vc : UIViewController!
    
    func show(body: String) -> UIViewController{
        let storyboard = UIStoryboard(name: "DoneAlert", bundle: nil)
        let alert = storyboard.instantiateViewController(withIdentifier: "alertDone") as! alertDone
        alert.body = body
        vc = alert
        return vc!
    }
}
