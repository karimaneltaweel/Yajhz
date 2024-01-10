//
//  AlertView.swift
//  ESS
//
//  Created by Abanoub Ghaly on 3/20/19.
//  Copyright © 2019 CivilSoft. All rights reserved.
//

import UIKit
import CDAlertView

class AlertView: NSObject {
    class func showAlert(view: UIViewController , title: String , message: String, success:@escaping () -> Void?){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
            success()
        }))
        view.present(alert, animated: true, completion: nil)
    }
    
    class func showAlertWithCompletion(view: UIViewController, title: String, message: String, success:@escaping () -> Void, failure:@escaping () -> Void) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Cancel", comment: ""), style: .cancel, handler: { action in
         failure()
        }))
        
        alert.addAction(UIAlertAction(title: NSLocalizedString("Ok", comment: ""), style: .default, handler: { action in
            success()
        }))
        
        view.present(alert, animated: true)
    }
    
    class func showLoadingAlert(view: UIViewController) {
        let alert = UIAlertController(title: nil, message: "Please wait...", preferredStyle: .alert)
        
        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = UIActivityIndicatorView.Style.gray
        loadingIndicator.startAnimating();
        
        alert.view.addSubview(loadingIndicator)
        view.present(alert, animated: true, completion: nil)
    }
    
    class func actionSheetAlert(view: UIViewController, btnOneName: String, btnTwoName: String, btnThreeName: String, oneClicked:@escaping () -> Void?, twoClicked:@escaping () -> Void?, threeClicked:@escaping () -> Void?) {
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: btnOneName, style: .default , handler:{ (UIAlertAction)in
            oneClicked()
        }))
        
        alert.addAction(UIAlertAction(title: btnTwoName, style: .default , handler:{ (UIAlertAction)in
            twoClicked()
        }))
        
        alert.addAction(UIAlertAction(title: btnThreeName, style: .default , handler:{ (UIAlertAction)in
            threeClicked()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler:{ (UIAlertAction)in
            
        }))
        
        view.present(alert, animated: true, completion: {
            print("completion block")
        })
    }
    
    class func actionSheetAlert(view: UIViewController, btnOneName: String, btnTwoName: String, oneClicked:@escaping () -> Void?, twoClicked:@escaping () -> Void?) {
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: btnOneName, style: .default , handler:{ (UIAlertAction)in
            oneClicked()
        }))
        
        alert.addAction(UIAlertAction(title: btnTwoName, style: .default , handler:{ (UIAlertAction)in
            twoClicked()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler:{ (UIAlertAction)in
            
        }))
        
        view.present(alert, animated: true, completion: {
            print("completion block")
        })
    }
    
    class func ipadActionSheetAlert(vc: UIViewController, btnOneName: String, btnTwoName: String, oneClicked:@escaping () -> Void?, twoClicked:@escaping () -> Void?) {
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: btnOneName, style: .default , handler:{ (UIAlertAction)in
            oneClicked()
        }))
        
        alert.addAction(UIAlertAction(title: btnTwoName, style: .default , handler:{ (UIAlertAction)in
            twoClicked()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler:{ (UIAlertAction)in
            
        }))
        if let popoverPresentationController = alert.popoverPresentationController {
            popoverPresentationController.sourceView = vc.view
            popoverPresentationController.sourceRect = CGRect(x: vc.view.bounds.midX, y: vc.view.bounds.midY, width: 0, height: 0)
            popoverPresentationController.permittedArrowDirections = []
        }
        vc.present(alert, animated: true, completion: {
            print("completion block")
        })
    }
}


extension UIViewController{
    func makeDoneAlert(title: String, SubTitle: String, Image : UIImage) {
        let alert = CDAlertView(title: title, message: SubTitle, type: .notification)
        let doneAction = CDAlertViewAction(title: NSLocalizedString("Done", comment: ""))
        alert.circleFillColor = UIColor.primaryGreenColor
        doneAction.buttonTextColor = UIColor.primaryGreenColor
        alert.add(action: doneAction)
        alert.show()
    }
    
    func makeOkAlert(title: String, SubTitle: String, Image : UIImage) {
        let alert = CDAlertView(title: title, message: SubTitle, type: .notification)
        let doneAction = CDAlertViewAction(title: NSLocalizedString("Ok", comment: ""))
        alert.circleFillColor = UIColor.primaryGreenColor
        doneAction.buttonTextColor = UIColor.primaryGreenColor
        alert.add(action: doneAction)
        alert.show()
    }
    
    func makeTrueAlert(title: String, SubTitle: String, Image : UIImage) {
        let alert = CDAlertView(title: title, message: SubTitle, type: .success)
        let doneAction = CDAlertViewAction(title: NSLocalizedString("Done", comment: ""))
        alert.circleFillColor = UIColor.primaryGreenColor
        alert.add(action: doneAction)
        alert.show()
    }
    func checkLoginAlert(title: String, SubTitle: String, Image : UIImage) {
        let alert = CDAlertView(title: title, message: SubTitle, type: .success)
        let logiAction = CDAlertViewAction(title: "Login")
        let cancilction = CDAlertViewAction(title: "Cancel")
        alert.circleFillColor = UIColor.primaryGreenColor
        alert.add(action: logiAction)
        alert.add(action: cancilction)
        alert.show()
    }
}


