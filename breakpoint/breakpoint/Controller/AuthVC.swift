//
//  AuthVC.swift
//  breakpoint
//
//  Created by Brian Beardmore on 8/17/17.
//  Copyright © 2017 Brian Beardmore. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func signInWithEmailButtonWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    @IBAction func signInWithGoogleButtonWasPressed(_ sender: Any) {
    }
    
    @IBAction func signInWithFacebookButtonWasPressed(_ sender: Any) {
    }
    
}
