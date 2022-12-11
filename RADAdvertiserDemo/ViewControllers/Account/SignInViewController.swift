//
//  SignInViewController.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 12.05.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth

protocol SignInDelegate: AnyObject {
    
    func didSignInComplete()
}

class SignInViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var actionButton: Button!
    
    weak var delegate: SignInDelegate?
    
    var isSignInMode: Bool {
        
        return segmentControl.selectedSegmentIndex == 0
    }
    
    //MARK: Override
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateContent()
    }
    
    //MARK: Private
    
    private func updateContent() {
        
        actionButton.setTitle( isSignInMode ? "Sign In" : "Sign Up" , for: .normal)
    }
    
    //MARKL: Actions
    
    @IBAction func segmentControlValueChanged(_ sender: Any) {
        
        updateContent()
    }
    
    @IBAction func actionButtonPressed(_ sender: UIButton) {
        
        guard let email = emailTextField.text,
            let pass = passwordTextField.text
            else {
                showAlert(title: "Error", message: "Enter your credentials")
                return
        }
        
        sender.isEnabled = false
        let completion: (AuthDataResult?, Error?) -> Void = { [weak self] authResult, error in

            sender.isEnabled = true
            guard authResult != nil else {
                self?.showAlert(error: error)
                return
            }
            self?.delegate?.didSignInComplete()
        }
        
        if isSignInMode {
            Auth.auth().signIn(withEmail: email, password: pass, completion: completion)
        } else {
            Auth.auth().createUser(withEmail: email, password: pass, completion: completion)
        }
    }
    
}
