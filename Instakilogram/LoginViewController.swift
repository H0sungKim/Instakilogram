//
//  LoginViewController.swift
//  Instakilogram
//
//  Created by 김호성 on 2024.05.20.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {

    @IBOutlet weak var tfID: CustomTextField!
    @IBOutlet weak var lbIDPlaceHolder: UILabel!
    
    @IBOutlet weak var tfPassword: CustomTextField!
    @IBOutlet weak var lbPasswordPlaceHolder: UILabel!
    
    @IBOutlet weak var googleLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfID.initialize(placeHolder: lbIDPlaceHolder)
        tfPassword.initialize(placeHolder: lbPasswordPlaceHolder)
        
        tfID.delegate = self
        tfPassword.delegate = self
        
        
        googleLoginButton.layer.borderWidth = 1
        googleLoginButton.layer.cornerRadius = 10
        googleLoginButton.layer.borderColor = UIColor.systemGray5.cgColor
        
    }
    
    @IBAction func onClickGoogleLogin(_ sender: Any) {
        NSLog("Google Login")
    }
    
    @IBAction func onClickBasicLogin(_ sender: Any) {
        
    }
    
    
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text == "" {
            let customTextfield: CustomTextField = textField as! CustomTextField
            UIView.animate(withDuration: 0.3) {
                customTextfield.setPlaceHolderSmall()
            }
        }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text == "" {
            let customTextfield: CustomTextField = textField as! CustomTextField
            UIView.animate(withDuration: 0.3) {
                customTextfield.setPlaceHolderBig()
            }
        }
    }
}
