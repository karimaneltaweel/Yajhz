//
//  LoginViewController+API.swift
//  Yajhz
//
//  Created by kariman eltawel on 10/01/2024.
//

import Foundation
import UIKit

extension LoginViewController{
    
    func login() {
        NetworkCall.shared.login(view: self.view, email: emailTF.text ?? "", password:passwordTF.text ?? ""){ [weak self] result in
            switch result {
            case .success(let data):
                if data?.success == true {
                    self?.makeOkAlert(title: "", SubTitle: data?.message ?? "", Image: UIImage())
                    UserDefaults.standard.set(data?.data?.token ?? "" , forKey: "userToken")
                    let storyboard : UIStoryboard = UIStoryboard(name:"Home", bundle: nil)
                    UIApplication.shared.keyWindow?.rootViewController = storyboard.instantiateInitialViewController()
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
