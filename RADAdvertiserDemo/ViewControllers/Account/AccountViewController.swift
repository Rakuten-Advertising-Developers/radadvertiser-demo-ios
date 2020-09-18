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
import RakutenAdvertisingAttribution

protocol SignOutDelegate: AnyObject {
    
    func didSignOutComplete()
}

class AccountViewController: UIViewController {
    
    weak var delegate: SignOutDelegate?
    @IBOutlet weak var segmentControl: UISegmentedControl!

    // MARK: Override

    override func viewDidLoad() {
        super.viewDidLoad()

        segmentControl.selectedSegmentIndex = UserDefaults.standard.bool(forKey: UserDafaultKey.useStageEnvironment) ? 1 : 0
    }

    // MARK: Internal

    func showInfoAlert() {

        showAlert(title: "App Relaunch Required", message: "Looks like app's settings updated, please relaunch the app to apply all changes")
    }

    // MARK: IB Actions
    
    @IBAction func signOutButtonPressed(_ sender: Any) {
        
        let firebaseAuth = Auth.auth()
        
        do {
            try firebaseAuth.signOut()
            delegate?.didSignOutComplete()
        } catch {
            showAlert(error: error)
        }
    }

    @IBAction func segmentValueChanged(_ sender: Any) {

        let useStageEnvironment = (segmentControl.selectedSegmentIndex == 1)
        UserDefaults.standard.set(useStageEnvironment, forKey: UserDafaultKey.useStageEnvironment)

        showInfoAlert()
    }
}
