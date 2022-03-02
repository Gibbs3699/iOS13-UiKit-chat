//
//  LoginViewController.swift
//  iOS13-UiKit-chat
//
//  Created by admin on 28/2/2565 BE.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let err = error {
                    print(err.localizedDescription)
                }else {
                    self.performSegue(withIdentifier: Constants.loginSegue, sender: self)
                }
            }
        }
    }
    
}

