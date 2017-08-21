//
//  AuthVC.swift
//  breakpoint
//
//  Created by Brian Beardmore on 8/17/17.
//  Copyright © 2017 Brian Beardmore. All rights reserved.
//

import UIKit
import Firebase

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            dismiss(animated: true, completion: nil)
        }
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
