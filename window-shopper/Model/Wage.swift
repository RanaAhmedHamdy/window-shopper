//
//  Wage.swift
//  window-shopper
//
//  Created by Hazem Mohamed Magdy on 11/22/17.
//  Copyright © 2017 Rana. All rights reserved.
//

import Foundation

class Wage {
    class func  calculate(wage :Double, price :Double) -> Int {
        return Int(ceil(price / wage))
    }
}
