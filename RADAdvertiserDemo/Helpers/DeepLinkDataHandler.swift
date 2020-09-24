//
//  DeepLinkDataHandler.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 24.09.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import Foundation

class DeepLinkDataHandler {

    weak var navigation: DeepLinkNavigationalable?

    func handleDeepLink(data: [String: String]?) {

        if let offerid = data?["specialoffer"] {

            DispatchQueue.main.async { [weak self] in
                self?.navigation?.showDetails(offerID: offerid)
            }
        }
    }
}
