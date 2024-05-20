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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
