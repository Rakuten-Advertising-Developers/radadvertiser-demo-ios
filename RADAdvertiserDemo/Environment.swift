//
//  Environment.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 27.07.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import Foundation
import RakutenAdvertisingAttribution

struct Environment {

    enum App {
        case main
        case second
    }

    static var app: App {

        #if MAIN_APP
        return .main
        #elseif SECOND_APP
        return .second
        #else
        fatalError("Unknow configuration for current target")
        #endif
    }
}

extension Environment.App: BackendURLProvider {

    var backendURL: URL {

        guard let url: URL = UserDefaults.standard.url(forKey: UserDafaultKey.customBaseURL) else {
            return BackendInfo.defaultConfiguration.backendURL
        }
        return url
    }
}
