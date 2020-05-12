//
//  AppCoordinator.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 12.05.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import Foundation
import FirebaseAuth

class AppCoordinator {
    
    var window: UIWindow?
    
    private var signInVC: SignInViewController {
        let signInVC = SignInViewController()
        signInVC.delegate = self
        return signInVC
    }
    
    private var mainVC: UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let mainVC = storyboard.instantiateInitialViewController()!
        
        if let tabBar = mainVC as? UITabBarController,
            let accountVC = tabBar.viewControllers?.first(where: { return $0 as? AccountViewController != nil }) as? AccountViewController {
            accountVC.delegate = self
        }
        return mainVC
    }
    
    func showFirstVC() {
        
        if Auth.auth().currentUser == nil {
            showSignIn()
        } else {
            showMain()
        }
    }
    
    func showSignIn() {
        
        window?.rootViewController = signInVC
    }
    
    func showMain() {
        
        window?.rootViewController = mainVC
    }
}

extension AppCoordinator: SignInDelegate {
    
    func didSignInComplete() {
        
        showMain()
    }
}

extension AppCoordinator: SignOutDelegate {
    
    func didSignOutComplete() {
        
        showSignIn()
    }
}
