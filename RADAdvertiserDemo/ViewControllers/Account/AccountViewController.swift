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
    @IBOutlet weak var customBaseURLTextField: UITextField!

    // MARK: Override

    override func viewDidLoad() {
        super.viewDidLoad()

        customBaseURLTextField.text = Environment.app.backendURL.absoluteString

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapOnView))
        view.addGestureRecognizer(tapGesture)
    }

    // MARK: Internal

    func hideKeyboard() {

        view.endEditing(true)
    }

    @objc func tapOnView() {

        hideKeyboard()
    }

    func applyNewCustomURLIfPossible() {

        hideKeyboard()

        guard let url = customBaseURLTextField.text.flatMap(URL.init(string:)),
              UIApplication.shared.canOpenURL(url) else {
            showWrongURLAlert()
            return
        }

        UserDefaults.standard.set(url, forKey: UserDafaultKey.customBaseURL)
        showRelaunchAlert()
    }

    func showWrongURLAlert() {

        showAlert(title: "Wrong URL", message: "Please specify a valid URL and try to save it again")
    }

    func showRelaunchAlert() {

        let alertController = UIAlertController(title: "App Relaunch Required", message: "Looks like app's settings updated, please relaunch the app to apply all changes", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: .default, handler: { [weak self] _ in
            self?.showRelaunchAlert()
        }))
        present(alertController, animated: true)
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

    @IBAction func saveURLButtonPressed(_ sender: Any) {

        applyNewCustomURLIfPossible()
    }

    @IBAction func resetToDefaultURLButtonPressed(_ sender: Any) {

        customBaseURLTextField.text = BackendInfo.defaultConfiguration.backendURL.absoluteString
        UserDefaults.standard.removeObject(forKey: UserDafaultKey.customBaseURL)
        showRelaunchAlert()
    }
}

extension AccountViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        applyNewCustomURLIfPossible()
        return true
    }
}
