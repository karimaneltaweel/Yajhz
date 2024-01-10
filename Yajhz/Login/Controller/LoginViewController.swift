//
//  LoginViewController.swift
//  Yajhz
//
//  Created by kariman eltawel on 08/01/2024.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        loginValidation()
    }
    
    @IBAction func signupPressed(_ sender: Any) {
        HelperFuction.pushViewControllerInAnotherStoryBoard(storybordName: "Register", withIdentifier: "RegisterViewController", from: self)
    }
    
    func loginValidation(){
        guard emailTF.text != "" else {
            self.makeOkAlert(title: "", SubTitle:  "Please enter your email", Image: UIImage())
            return
        }
        guard passwordTF.text != "" else {
            self.makeOkAlert(title: "", SubTitle: "Please enter your password", Image: UIImage())
            return
        }    
        login()
    }
    
    
}
