//
//  OfferDetailsViewController.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 24.09.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import Foundation
import UIKit

class OfferDetailsViewController: UIViewController {

    var offerID: String?

    @IBOutlet weak var offerNumberLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelButtonPressed))
        navigationItem.leftBarButtonItem = cancelButton
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        offerNumberLabel.text = offerID
    }

    @objc func cancelButtonPressed() {

        dismiss(animated: true)
    }
}
