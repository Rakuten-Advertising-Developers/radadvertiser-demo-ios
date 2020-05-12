//
//  AccountViewController.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 12.05.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth

protocol SignOutDelegate: AnyObject {
    
    func didSignOutComplete()
}

class AccountViewController: UIViewController {
    
    weak var delegate: SignOutDelegate?
    
    @IBAction func signOutButtonPressed(_ sender: Any) {
        
        let firebaseAuth = Auth.auth()
        
        do {
            try firebaseAuth.signOut()
            delegate?.didSignOutComplete()
        } catch {
            showAlert(error: error)
        }
    }
}
