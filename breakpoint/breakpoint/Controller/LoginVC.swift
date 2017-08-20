//
//  LoginVC.swift
//  breakpoint
//
//  Created by Brian Beardmore on 8/17/17.
//  Copyright © 2017 Brian Beardmore. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailField: insetTextField!
    @IBOutlet weak var passwordField: insetTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self
     }
 
    @IBAction func signInButtonWasPressed(_ sender: Any) {
        if emailField.text != nil && passwordField.text != nil {
            AuthService.instance.loginUser(withEmail: emailField.text!, andPassword: passwordField.text!, loginComplete: { (success, loginError) in
                if success {
                    self.dismiss(animated: true, completion: nil)
                } else {
                    print(String(describing: loginError?.localizedDescription))
                }
                
                AuthService.instance.registerUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, userCreationComplete: { (success, registrationError) in
                    if success {
                        AuthService.instance.loginUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, loginComplete: { (success, true) in
                            self.dismiss(animated: true, completion: nil)
                            print("Successfully registered user")
                        })
                    } else {
                        print(String(describing: registrationError?.localizedDescription))
                    }
                })
            })
        }
    }
    
    @IBAction func closeButtonWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

extension LoginVC: UITextFieldDelegate {
    
}
