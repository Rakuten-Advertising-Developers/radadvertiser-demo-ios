//
//  OrderManager.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 13.04.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import Foundation
import RakutenAdvertisingAttribution

protocol OrderModifier: AnyObject {
    
    func add(product: Product)
    func purchase()
}

protocol OrderDescriber: AnyObject {
    
    var orderItemsCount: Int { get }
    func orderItem(at index: Int) -> OrderItemRepresentation
}

extension Notification.Name {
    
    static let orderStateDidChange = Notification.Name("orderStateDidChange")
}

class OrderManager {
    
    static let shared = OrderManager()
    
    private var orderItems: [OrderItem] = [] {
        
        didSet {
            notifyOrderUpdate()
        }
    }
    
    //MARK: Init
    
    private init() {}

    func orderItem(by product: Product) -> OrderItem? {

        guard let orderItem = orderItems.first(where: { return $0.product.name == product.name }) else {
            return nil
        }
        return orderItem
    }

    func notifyOrderUpdate() {

        NotificationCenter.default.post(name: .orderStateDidChange, object: nil)
    }

    func sendAddToCardEvent(with product: Product) {

        let eventData = EventData(transactionId: UUID().uuidString,
                                  currency: "USD",
                                  revenue: Double(truncating: product.price as NSNumber),
                                  shipping: Double.random(in: 10.0 ..< 20.0).percentStyle,
                                  tax: Double.random(in: 5.0 ..< 15.0).percentStyle,
                                  coupon: "coupon_text",
                                  affiliation: "affiliation",
                                  description: product.name,
                                  searchQuery: product.name)

        let customData: EventCustomData = ["Key1": "Value1",
                                           "Key2": "Value2"]

        let contentItem: EventContentItem = [.price: product.price,
                                          .quantity: 1,
                                          .sku: product.name.sha1,
                                          .productName: product.name]

        let event = Event(name: "ADD_TO_CART",
                          eventData: eventData,
                          customData: customData,
                          contentItems: [contentItem])

        RakutenAdvertisingAttribution.shared.eventSender.send(event: event)
    }

    func sendPurchaseEvent() {

        let revenue: Decimal = orderItems.reduce(0, { return $0 + $1.product.price * Decimal($1.quantity) })
        let description: String = orderItems.map { return $0.product.name }.joined(separator: ", ")

        let eventData = EventData(transactionId: UUID().uuidString,
                                  currency: "USD",
                                  revenue: Double(truncating: revenue as NSNumber),
                                  shipping: Double.random(in: 10.0 ..< 20.0).percentStyle,
                                  tax: Double.random(in: 5.0 ..< 15.0).percentStyle,
                                  coupon: "coupon_text",
                                  affiliation: "affiliation",
                                  description: description,
                                  searchQuery: description)

        let customData: EventCustomData = ["Key3": "Value3",
                                           "Key4": "Value4"]

        let contentItems: [EventContentItem] = orderItems.compactMap { item in
            return [.price: item.product.price,
                    .quantity: item.quantity,
                    .sku: item.product.name.sha1,
                    .productName: item.product.name]
        }

        let event = Event(name: "PURCHASE",
                          eventData: eventData,
                          customData: customData,
                          contentItems: contentItems)

        RakutenAdvertisingAttribution.shared.eventSender.send(event: event)
    }
}

extension OrderManager: OrderModifier {
    
    func add(product: Product) {

        if let orderItem = orderItem(by: product) {
            orderItem.quantity += 1
            notifyOrderUpdate()
        } else {
            let newOrderItem = OrderItem(product: product)
            orderItems.append(newOrderItem)
        }
//        sendAddToCardEvent(with: product)
    }
    
    func purchase() {

        sendPurchaseEvent()
        orderItems.removeAll()
    }
}

extension OrderManager: OrderDescriber {

    var orderItemsCount: Int {

        return orderItems.count
    }

    func orderItem(at index: Int) -> OrderItemRepresentation {

        return orderItems[index]
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
