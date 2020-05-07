//
//  AppDelegate.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 03.04.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import UIKit
import RADAttribution
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        setupFirebase()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge],
                                                                completionHandler: { _, _ in })
        
        setupRADAttribution(with: launchOptions)
        
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        
        RADAttribution.shared.linkResolver.resolveLink(url: url)
        return true
    }
    
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        
        let resolved = RADAttribution.shared.linkResolver.resolve(userActivity: userActivity)
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
    
    func setupRADAttribution(with launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        
        let obfuscator = Obfuscator(with: Bundle.main.bundleIdentifier!)
        let configuration = Configuration(key: .data(value: obfuscator.revealData(from: SecretConstants().RADAttributionKey)),
                                          launchOptions: launchOptions)
        RADAttribution.setup(with: configuration)
        
        #if DEBUG
        RADAttribution.shared.logger.enabled = true
        #endif
        RADAttribution.shared.linkResolver.delegate = AttributionSDKHandler.shared
        RADAttribution.shared.eventSender.delegate = AttributionSDKHandler.shared
    }
}
