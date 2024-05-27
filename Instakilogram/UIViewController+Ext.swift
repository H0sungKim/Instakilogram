//
//  ViewController+Ext.swift
//  Instakilogram
//
//  Created by 김호성 on 2024.05.24.
//

import UIKit

// MARK: - Public Outter Class, Struct, Enum, Protocol
enum ViewControllerEnum: String, CaseIterable {
    case main
}

extension UIViewController {

    // MARK: - Public Method
    class func getViewController(viewControllerEnum: ViewControllerEnum) -> UIViewController {
        switch viewControllerEnum {
        case .main:
            return getViewController(storyboard: "Main", identifier: String(describing: MainViewController.self), modalPresentationStyle: .fullScreen)
        }
    }
    
    // MARK: - Private Method
    private class func getViewController(storyboard: String, identifier: String, modalPresentationStyle: UIModalPresentationStyle) -> UIViewController {
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: identifier)
        vc.modalPresentationStyle = modalPresentationStyle
        return vc
    }
}
