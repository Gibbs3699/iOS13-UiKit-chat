//
//  ChatViewController.swift
//  iOS13-UiKit-chat
//
//  Created by admin on 28/2/2565 BE.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Constants.appName
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logoutPressed(_ sender: UIBarButtonItem) {
        do {
          try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
    }
    
}
