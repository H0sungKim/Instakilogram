//
//  AppDelegate.swift
//  JapaneseBenkyo
//
//  Created by 김호성 on 2/12/24.
//

import UIKit
import AVFoundation

@main
class AppDelegate: UIResponder, UIApplicationDelegate, UIGestureRecognizerDelegate {

    var window: UIWindow?
    var navigationController: UINavigationController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // For splash launchscreen.
        sleep(1)
        
        let screen = UIScreen.main
        let bounds = screen.bounds
        
        self.window = UIWindow(frame: bounds)
        if let window = window {
            window.backgroundColor = UIColor.white
            
            let storyboard = UIStoryboard(name: "Login", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController")
            
            navigationController = UINavigationController.init(rootViewController:viewController)
            navigationController?.setNavigationBarHidden(true, animated: false)
            navigationController?.interactivePopGestureRecognizer?.isEnabled = true
            navigationController?.interactivePopGestureRecognizer?.delegate = self
            window.rootViewController = navigationController
            window.makeKeyAndVisible()
            
        }
        
        return true
    }
    
    // Hold the screen vertically.
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return .portrait
    }
    
    // Prevent the rootviewcontroller from being popped.
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return navigationController?.viewControllers.count ?? 0 > 1
    }
}
