//
//  WelcomeViewController.swift
//  Flash Chat
//
//  Created by Tyrone Oggen on 2021/08/31.
//  Copyright © 2021 Tyrone Oggen. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    //For when you're about to leave the screen and want to show the navigation bar again
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = K.appName
    }
}
