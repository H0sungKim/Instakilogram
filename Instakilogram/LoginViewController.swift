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
    
    @IBOutlet weak var idcLoginBtn: UIActivityIndicatorView!
    
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
        
        self.hideKeyboardWhenTappedAround()
        
    }
    
    @IBAction func onClickGoogleLogin(_ sender: Any) {
        NSLog("Google Login")
    }
    
    @IBAction func onClickBasicLogin(_ sender: UIButton) {
        sender.setTitleColor(.clear, for: .normal)
        idcLoginBtn.startAnimating()
        
        let vc = UIViewController.getViewController(viewControllerEnum: .main) as! MainViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        let customTextfield: CustomTextField = textField as! CustomTextField
        if textField.text == "" {
            UIView.animate(withDuration: 0.3) {
                customTextfield.setPlaceHolderBig()
            }
        } else {
            UIView.animate(withDuration: 0.3) {
                customTextfield.setPlaceHolderSmall()
            }
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tfID {
            tfPassword.becomeFirstResponder()
        } else {
            tfPassword.resignFirstResponder()
        }
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if let text = textField.text {
            let endPosition = textField.endOfDocument
            textField.selectedTextRange = textField.textRange(from: endPosition, to: endPosition)
        }
    }
}

