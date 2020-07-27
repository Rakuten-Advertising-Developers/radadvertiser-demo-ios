//
//  Button.swift
//  RADAdvertiserDemo
//
//  Created by Durbalo, Andrii on 13.04.2020.
//  Copyright © 2020 Rakuten Advertising. All rights reserved.
//

import UIKit

@IBDesignable
class Button: UIButton {

    var app: Environment.App = Environment.app

    var mainColor: UIColor {
        switch app {
        case .main:
            return .systemBlue
        case .second:
            return .magenta
        }
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let path = UIBezierPath(roundedRect: rect, cornerRadius: 5)
        mainColor.setFill()
        path.fill()
    }
}
