//
//  WelcomViewController.swift
//  iOS13-UiKit-chat
//
//  Created by admin on 28/2/2565 BE.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = Constants.appName
//        titleLabel.text = ""
//        var charIndex = 0.0 //add .0 change to double
//
//        let titleText = "⚡️FlashChat"
//        for letter in titleText {
//            print(charIndex)
//            print(letter)
//            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
//                self.titleLabel.text?.append(letter)
//            }
//            charIndex += 1
//        }
       
    }
    
}

