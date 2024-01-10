//
//  RegisterViewController+Helpers.swift
//  Yajhz
//
//  Created by kariman eltawel on 10/01/2024.
//

import Foundation
import UIKit

extension RegisterViewController{
    func signupValidation(){
        checkEmpty()
    }
    
    func checkEmpty(){
        guard nameTF.text != "" else {
            self.makeOkAlert(title: "", SubTitle:  "Please enter your name", Image: UIImage())
            return
        }
        guard emailTF.text != "" else {
            self.makeOkAlert(title: "", SubTitle: "Please enter your email", Image: UIImage())
            return
        }

        guard PhoneTF.text != "" else {
            self.makeOkAlert(title: "", SubTitle: "Please enter your phone", Image: UIImage())
            return
        }
        guard passwordTF.text != "" else {
            self.makeOkAlert(title: "", SubTitle: "Please enter your password", Image: UIImage())
            return
        }
        guard confirmPasswordTF.text != "" else {
            self.makeOkAlert(title: "", SubTitle: "lease enter your confirm password", Image: UIImage())
            return
        }
        nameLimit()

    }
    
    func phoneLimit(){
        guard PhoneTF.text?.count == 11 else {
            makeOkAlert(title: "Phone Number must be 11 numbers", SubTitle: "", Image: UIImage())
            return
        }
        passwordLimit()
    }
    
    func nameLimit(){
        guard nameTF.text?.count ?? 0 >= 14 else {
            makeOkAlert(title: "user name must be at least 14 characters", SubTitle: "", Image: UIImage())
            return
        }
        phoneLimit()
    }
    func passwordLimit(){
        guard passwordTF.text?.count ?? 0 >= 8 else {
            makeOkAlert(title: "password must be at least 8 characters", SubTitle: "", Image: UIImage())
            return
        }
        checkPassword()
    }
    
    func checkPassword(){
        guard confirmPasswordTF.text == passwordTF.text else {
            makeOkAlert(title: NSLocalizedString("Please Check Confirm Password", comment: ""), SubTitle: "", Image: UIImage())
            return
        }
        
        register()

    }
    
}

