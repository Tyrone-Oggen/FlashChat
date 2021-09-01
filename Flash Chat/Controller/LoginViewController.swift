//
//  LoginViewController.swift
//  Flash Chat
//
//  Created by Tyrone Oggen on 2021/08/31.
//  Copyright © 2021 Tyrone Oggen. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: K.loginToChatSegue, sender: self)
                }
            }
        }
    }
    
}
