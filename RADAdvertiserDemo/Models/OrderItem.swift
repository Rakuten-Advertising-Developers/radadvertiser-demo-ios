//
//  OrderItem.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 18.09.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import Foundation

protocol OrderItemRepresentation {
    
    var product: Product { get }
    var quantity: Int { get }
}

class OrderItem {

    let product: Product
    var quantity: Int

    init(product: Product) {
        self.product = product
        self.quantity = 1
    }
}

extension OrderItem: OrderItemRepresentation {}
