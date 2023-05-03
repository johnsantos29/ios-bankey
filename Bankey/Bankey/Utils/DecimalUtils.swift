//
//  DecimalUtils.swift
//  Bankey
//
//  Created by John Erick Santos on 6/5/2023.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
