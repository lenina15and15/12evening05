//
//  LoginViewController.swift
//  evening120518
//
//  Created by Admin on 13/05/2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation
import UIKit


class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let loginService = LoginService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        let results = loginService.loginUser(self.loginTextField.text, self.passwordTextField.text)
        print(results)
        print("login")
    }
    
    @IBAction func registrationAction(_ sender: UIButton) {
        print("registration")
    }
    @IBAction func logoutAction(_ sender: UIButton) {
        print("logout")
    }
}
