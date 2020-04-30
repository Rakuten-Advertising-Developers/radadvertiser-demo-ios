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
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        guard let tabBarController = storyboard.instantiateInitialViewController() as? TabBarViewController else { return true }
        
        let obfuscator = Obfuscator(with: Bundle.main.bundleIdentifier!)
        let configuration = Configuration(key: .data(value: obfuscator.revealData(from: SecretConstants().RADAttributionKey)),
                                          launchOptions: launchOptions)
        RADAttribution.setup(with: configuration)
        
        #if DEBUG
            RADAttribution.shared.logger.enabled = true
        #endif
        RADAttribution.shared.linkResolver.delegate = tabBarController
        RADAttribution.shared.eventSender.delegate = tabBarController
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
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
}
