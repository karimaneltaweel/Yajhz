//
//  Alert.swift
//  Popyup
//
//  Created by Omar Adel on 12/11/19.
//  Copyright © 2019 z510. All rights reserved.
//

import UIKit

class flashAlert{
    var vc : UIViewController!
    var timer = Timer()
    
    func show(body: String, delay : Double) -> UIViewController{
        let storyboard = UIStoryboard(name: "alertView", bundle: nil)
        let alert = storyboard.instantiateViewController(withIdentifier: "PopVC") as! PopVC
        alert.alertBody = body
        vc = alert
        timer = Timer.scheduledTimer(timeInterval: delay, target: self, selector: #selector(hide), userInfo: nil, repeats: true)
        return vc!
    }
    
    @objc func hide(){
            vc!.dismiss(animated: true, completion: nil)
            timer.invalidate()
    }
    
}
