//
//  RegisterViewController.swift
//  Yajhz
//
//  Created by kariman eltawel on 10/01/2024.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var PhoneTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmPasswordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    @IBAction func signupPressed(_ sender: Any) {
        signupValidation()
    }
    
    
    @IBAction func loginPressed(_ sender: Any) {
        HelperFuction.pushViewControllerInAnotherStoryBoard(storybordName: "Login", withIdentifier: "LoginViewController", from: self)
    }
    

}
