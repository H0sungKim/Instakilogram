//
//  LoginViewController.swift
//  Instakilogram
//
//  Created by 김호성 on 2024.05.20.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var googleLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        googleLoginButton.layer.borderWidth = 1
        googleLoginButton.layer.cornerRadius = 10
        googleLoginButton.layer.borderColor = UIColor.systemGray5.cgColor
    }
    
    @IBAction func onClickGoogleLogin(_ sender: Any) {
        NSLog("Google Login")
    }
    
}
