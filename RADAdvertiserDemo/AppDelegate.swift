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

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var coordinator = AppCoordinator()
    var attributionSDKHandler: AttributionSDKHandler?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        setupFirebase()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge],
                                                                completionHandler: { _, _ in })
        
        setupRakutenAdvertisingAttribution(with: launchOptions)
        
        setupUI()
        
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {

        RakutenAdvertisingAttribution.shared.linkResolver.resolve(url: url)
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

        RakutenAdvertisingAttribution.shared.linkResolver.resolve(userActivity: userActivity)
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

        coordinator.window = window
        coordinator.showFirstVC()
    }
    
    func setupRakutenAdvertisingAttribution(with launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {

        let useStageEnvironment = UserDefaults.standard.bool(forKey: UserDafaultKey.useStageEnvironment)

        let secretConstants = SecretConstants()
        let obfuscator = Obfuscator(with: secretConstants.salt)
        let key = PrivateKey.data(value: obfuscator.revealData(from: secretConstants.RakutenAdvertisingAttributionKey))

        let configuration = Configuration(key: key,
                                          launchOptions: launchOptions,
                                          backendURLProvider: useStageEnvironment ? BackendInfo.stageConfiguration : BackendInfo.defaultConfiguration)

        RakutenAdvertisingAttribution.setup(with: configuration)
        RakutenAdvertisingAttribution.shared.logger.enabled = true
        
        let deepLinkHandler = DeepLinkDataHandler()
        deepLinkHandler.navigation = coordinator

        attributionSDKHandler = AttributionSDKHandler()
        attributionSDKHandler?.deepLinkHandler = deepLinkHandler

        RakutenAdvertisingAttribution.shared.linkResolver.delegate = attributionSDKHandler
        RakutenAdvertisingAttribution.shared.eventSender.delegate = attributionSDKHandler
        
        RakutenAdvertisingAttribution.shared.adSupport.isTrackingEnabled = true
        RakutenAdvertisingAttribution.shared.adSupport.advertisingIdentifier = "test_idfa"
        
//        IDFAFetcher.fetchIfAuthorized {
//            RakutenAdvertisingAttribution.shared.adSupport.isTrackingEnabled = $0
//            RakutenAdvertisingAttribution.shared.adSupport.advertisingIdentifier = $1.uuidString
//        }
    }
}
