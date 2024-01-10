//
//  HelpersFunctions.swift
//  Yajhz
//
//  Created by kariman eltawel on 10/01/2024.
//

import Foundation
import UIKit

class HelperFuction{
    static func checkEmptyText(controller:UIViewController,textField:UITextField,popupMsg:String){
        guard textField.text != "" else {
            controller.makeOkAlert(title: "", SubTitle: popupMsg, Image: UIImage())
            return
        }
    }
    
    static func pushViewControllerInSameStoryboard(withIdentifier identifier: String, from viewController: UIViewController) {
        let nextViewController = viewController.storyboard?.instantiateViewController(withIdentifier: identifier)
        viewController.navigationController?.pushViewController(nextViewController!, animated: true)
    }
    
    static func pushViewControllerInAnotherStoryBoard(storybordName: String, withIdentifier identifier: String, from viewController: UIViewController) {
        let storyBoard = UIStoryboard(name: storybordName, bundle: nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: identifier)
        viewController.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    
}
