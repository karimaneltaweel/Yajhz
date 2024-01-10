//
//  RegisterViewController+API.swift
//  Yajhz
//
//  Created by kariman eltawel on 10/01/2024.
//

import Foundation
import UIKit

extension RegisterViewController{
    
    func register() {
        NetworkCall.shared.register(view: self.view, email: emailTF.text ?? "", password: passwordTF.text ?? "", phone: PhoneTF.text ?? "", name: nameTF.text ?? ""){ [weak self] result in
            switch result {
            case .success(let data):
                if data?.success == true {
                    self?.makeOkAlert(title: "", SubTitle: data?.message ?? "", Image: UIImage())
                    HelperFuction.pushViewControllerInAnotherStoryBoard(storybordName: "Login", withIdentifier: "LoginViewController", from: self!)
                }else{
                }
            case .failure(let error):
                if let error = error as? EtihadError {
                    self?.makeOkAlert(title: error.msg.rawValue, SubTitle: "", Image: UIImage())
                }else{
                    self?.makeOkAlert(title: (error as? ErrorModel)?.msg ?? "", SubTitle: "", Image: UIImage())
                }
            }
        }
    }
}
