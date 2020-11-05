//
//  IDFAFetcher.swift
//  RADPublisherDemo
//
//  Created by Durbalo, Andrii on 03.11.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import Foundation
import AdSupport

#if canImport(AppTrackingTransparency)
    import AppTrackingTransparency
#endif

typealias IDFAFetcherCompletion = ((Bool, UUID)->())

class IDFAFetcher {

    // MARK: Internal

    static func startFetching(with completion: @escaping IDFAFetcherCompletion) {

        let innerCompletion: ()->() = {

            let enabled: Bool
            if #available(iOS 14, *) {
                enabled = ATTrackingManager.trackingAuthorizationStatus == .authorized
            } else {
                enabled = ASIdentifierManager.shared().isAdvertisingTrackingEnabled
            }
            let identifier = ASIdentifierManager.shared().advertisingIdentifier

            DispatchQueue.main.async {
                completion(enabled, identifier)
            }
        }

        if #available(iOS 14, *) {
            if ATTrackingManager.trackingAuthorizationStatus == .notDetermined {
                ATTrackingManager.requestTrackingAuthorization { status in
                    innerCompletion()
                }
            } else {
                innerCompletion()
            }
        } else {
            innerCompletion()
        }
    }
}
