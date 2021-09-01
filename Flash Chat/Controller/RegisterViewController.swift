//
//  RegisterViewController.swift
//  Flash Chat
//
//  Created by Tyrone Oggen on 2021/08/31.
//  Copyright © 2021 Tyrone Oggen. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    //localizedDescription is used to translate it to the user's selected language
                    print(e.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: K.registerToChatSegue, sender: self)
                }
            }
        }
    }
    
}
