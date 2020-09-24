//
//  AppCoordinator.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 12.05.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import Foundation
import FirebaseAuth

protocol DeepLinkNavigationalable: AnyObject {

    func showDetails(offerID: String)
}

class AppCoordinator {
    
    var window: UIWindow?
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    private var signInVC: SignInViewController {
        let signInVC = SignInViewController()
        signInVC.delegate = self
        return signInVC
    }
    
    private var mainVC: UIViewController {

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

extension AppCoordinator: DeepLinkNavigationalable {

    func showDetails(offerID: String) {

        let vc = storyboard.instantiateViewController(identifier: "OfferDetailsViewController") as! OfferDetailsViewController
        vc.offerID = offerID

        let navController = UINavigationController(rootViewController: vc)

        var targetVC = window?.rootViewController
        while targetVC?.presentedViewController != nil {
            targetVC = targetVC?.presentedViewController
        }
        targetVC?.present(navController, animated: true)
    }
}
