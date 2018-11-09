//
//  LoginVC.swift
//  BreakPoint
//
//  Created by David E Bratton on 11/8/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func signInWithEmailBtnPressed(_ sender: Any) {
        let loginByEmailVC = storyboard?.instantiateViewController(withIdentifier: "LoginByEmailVC")
        present(loginByEmailVC!, animated: true, completion: nil)
    }
    
    @IBAction func googleBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func facebookBtnPressed(_ sender: Any) {
        
    }
    
}
