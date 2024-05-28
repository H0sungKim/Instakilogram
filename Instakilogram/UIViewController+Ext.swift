//
//  ViewController+Ext.swift
//  Instakilogram
//
//  Created by 김호성 on 2024.05.24.
//

import UIKit

enum ViewControllerEnum: String, CaseIterable {
    case main
}

extension UIViewController {

    class func getViewController(viewControllerEnum: ViewControllerEnum) -> UIViewController {
        switch viewControllerEnum {
        case .main:
            return getViewController(storyboard: "Main", identifier: String(describing: MainViewController.self), modalPresentationStyle: .fullScreen)
        }
    }
    
    private class func getViewController(storyboard: String, identifier: String, modalPresentationStyle: UIModalPresentationStyle) -> UIViewController {
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: identifier)
        vc.modalPresentationStyle = modalPresentationStyle
        return vc
    }
    
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

