//
//  AppDelegate.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 03.04.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import UIKit
import RakutenAdvertisingAttribution
import Firebase
import FirebaseCore
import AdSupport

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var coordinator: AppCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        setupFirebase()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge],
                                                                completionHandler: { _, _ in })
        
        setupRakutenAdvertisingAttribution(with: launchOptions)
        
        setupUI()
        
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {

        RakutenAdvertisingAttribution.shared.linkResolver.resolveLink(url: url)
        return true
    }

    func shouldIgnoreLinkResolver(userActivity: NSUserActivity) -> Bool {

        guard userActivity.activityType == NSUserActivityTypeBrowsingWeb,
            let incomingURL = userActivity.webpageURL,
            let host = incomingURL.host else { return false }

        let excludedDomains: Set<String> = ["example.com", "excluded.com"]
        return excludedDomains.contains(host)
    }
    
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        let resolved = RakutenAdvertisingAttribution.shared.linkResolver.resolve(userActivity: userActivity)
        if resolved {
            print("userActivity available to resolve")
        } else {
            print("userActivity unavailable to resolve")
        }
        return true
    }
    
    func setupFirebase() {

        FirebaseConfiguration.shared.setLoggerLevel(.min)
        FirebaseApp.configure()
    }
    
    func setupUI() {

        switch Environment.app {

        case .main:
           break
        case .second:
            UIBarButtonItem.appearance().tintColor = .magenta
            UITabBar.appearance().tintColor = .magenta
        }
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        coordinator = AppCoordinator()
        coordinator?.window = window
        
        coordinator?.showFirstVC()
    }
    
    func setupRakutenAdvertisingAttribution(with launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {

        let salt = "com.rakutenadvertising.RADAdvertiserDemo"//Bundle.main.bundleIdentifier!
        let obfuscator = Obfuscator(with: salt)
        let configuration = Configuration(key: .data(value: obfuscator.revealData(from: SecretConstants().rakutenAdvertisingAttributionKey)),
                                          launchOptions: launchOptions,
                                          backendURLProvider: Environment.app)

        RakutenAdvertisingAttribution.setup(with: configuration)
        
        #if DEBUG
        RakutenAdvertisingAttribution.shared.logger.enabled = true
        #endif
        RakutenAdvertisingAttribution.shared.linkResolver.delegate = AttributionSDKHandler.shared
        RakutenAdvertisingAttribution.shared.eventSender.delegate = AttributionSDKHandler.shared
        
        RakutenAdvertisingAttribution.shared.adSupport.isTrackingEnabled = ASIdentifierManager.shared().isAdvertisingTrackingEnabled
        RakutenAdvertisingAttribution.shared.adSupport.advertisingIdentifier = ASIdentifierManager.shared().advertisingIdentifier.uuidString
    }
}
