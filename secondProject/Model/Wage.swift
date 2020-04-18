//
//  Wage.swift
//  secondProject
//
//  Created by Stanislav on 12.04.2020.
//  Copyright © 2020 Stanislav. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Double {
        return ceil(price / wage)
    }
}
