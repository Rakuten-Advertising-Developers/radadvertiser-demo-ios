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
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        
        RakutenAdvertisingAttribution.shared.linkResolver.resolveLink(url: url)
        return true
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
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        coordinator = AppCoordinator()
        coordinator?.window = window
        
        coordinator?.showFirstVC()
    }
    
    func setupRakutenAdvertisingAttribution(with launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        
        let obfuscator = Obfuscator(with: Bundle.main.bundleIdentifier!)
        let configuration = Configuration(key: .data(value: obfuscator.revealData(from: SecretConstants().rakutenAdvertisingAttributionKey)),
                                          launchOptions: launchOptions)
        RakutenAdvertisingAttribution.setup(with: configuration)
        
        #if DEBUG
        RakutenAdvertisingAttribution.shared.logger.enabled = true
        #endif
        RakutenAdvertisingAttribution.shared.linkResolver.delegate = AttributionSDKHandler.shared
        RakutenAdvertisingAttribution.shared.eventSender.delegate = AttributionSDKHandler.shared
    }
}
