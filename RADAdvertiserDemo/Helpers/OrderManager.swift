//
//  OrderManager.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 13.04.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import Foundation
import RADAttribution

protocol OrderModifier: class {
    
    func add(product: Product)
    func purchase()
}

protocol OrderDescriber: class {
    
    var productsCount: Int { get }
    func product(at index: Int) -> Product
}

extension Notification.Name {
    
    static let orderStateDidChange = Notification.Name("orderStateDidChange")
}

class OrderManager {
    
    static let shared = OrderManager()
    
    private var products: [Product] = [] {
        
        didSet {
            NotificationCenter.default.post(name: .orderStateDidChange, object: nil)
        }
    }
    
    //MARK: Init
    
    private init() {
        
    }
}

extension OrderManager: OrderModifier {
    
    func add(product: Product) {
        
        products.append(product)
        
        let eventData = EventData(transactionId: UUID().uuidString,
                                  currency: "USD",
                                  revenue: Double(truncating: product.price as NSNumber),
                                  shipping: Double.random(in: 10.0 ..< 20.0).percentStyle,
                                  tax: Double.random(in: 5.0 ..< 15.0).percentStyle,
                                  coupon: "coupon_text",
                                  affiliation: "affiliation",
                                  description: product.name,
                                  searchQuery: product.name)
        
        let event = Event(name: "ADD_TO_CART",
                          eventData: eventData,
                          customData: ["productName": product.name],
                          contentItems: [["product": product]])
        
        RADAttribution.shared.eventSender.send(event: event)
    }
    
    func purchase() {
        
        let revenue: Decimal = products.reduce(0, { return $0 + $1.price })
        let description: String = products.map { return $0.name }.joined(separator: ", ")
        
        let eventData = EventData(transactionId: UUID().uuidString,
                                  currency: "USD",
                                  revenue: Double(truncating: revenue as NSNumber),
                                  shipping: Double.random(in: 10.0 ..< 20.0).percentStyle,
                                  tax: Double.random(in: 5.0 ..< 15.0).percentStyle,
                                  coupon: "coupon_text",
                                  affiliation: "affiliation",
                                  description: description,
                                  searchQuery: description)
        
        let event = Event(name: "PURCHASE",
                          eventData: eventData,
                          customData: ["totalCount": "\(products.count)"],
                          contentItems: [["products": products]])
        
        RADAttribution.shared.eventSender.send(event: event)
        
        products.removeAll()
    }
}

extension OrderManager: OrderDescriber {
    
    var productsCount: Int {
        
        return products.count
    }
    
    func product(at index: Int) -> Product {
        
        return products[index]
    }
}

extension Double {
    
    var percentStyle: Double {
        
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        
        guard let stringValue = formatter.string(from: self as NSNumber),
            let value = Double(stringValue) else {
                return 0
        }
        return value
    }
}
