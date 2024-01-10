//
//  HelpersFunctions.swift
//  Yajhz
//
//  Created by kariman eltawel on 10/01/2024.
//

import Foundation
import UIKit

class HelperFuction{    
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
