//
//  LoginByEmailVC.swift
//  BreakPoint
//
//  Created by David E Bratton on 11/8/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit
import Firebase

class LoginByEmailVC: UIViewController {

    @IBOutlet weak var emailTextField: InsetTextField!
    @IBOutlet weak var passwordTextField: InsetTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signInBtnPressed(_ sender: Any) {
        if emailTextField.text != nil && passwordTextField.text != nil {
            if let email = emailTextField.text {
                if let password = passwordTextField.text {
                    AuthService.instance.loginUser(withEmail: email, andPassword: password) { (success, error) in
                        if success {
                            print("Success Logging In")
                            self.dismiss(animated: true, completion: nil)
                        } else {
                            print("Error Logging In: \(String(describing: error?.localizedDescription))")
                        }
                        
                        AuthService.instance.registerUser(withEmail: email, andPassword: password, userCreationComplete: { (success, error) in
                            if success {
                                AuthService.instance.loginUser(withEmail: email, andPassword: password, loginComplete: { (success, nil) in
                                    print("Success Registering User")
                                    self.dismiss(animated: true, completion: nil)
                                })
                            } else {
                                print("Error Registering User: \(String(describing: error?.localizedDescription))")
                            }
                        })
                    }
                }
            }
            
        }
    }
    
}

extension LoginByEmailVC: UITextFieldDelegate {
    
}
