//
//  brain.swift
//  converter
//
//  Created by Amir Zhunussov on 08.07.2022.
//

import UIKit
struct converterTenge {
    
    var money: currency?
    
    mutating func calculateDollar(dollar: Float) {
        let dollar = (money?.dollar ?? 0.0) * 473.5
        if dollar >= 0 {
            money = currency(dollar: dollar, euro: 0, ruble: 0)
        }
    }
   mutating func calculateEuro(euro: Float) {
        let euro = (money?.euro ?? 0.0) * 480.87
        if euro >= 0 {
            money = currency(dollar: 0, euro: euro, ruble: 0)
        }
    }
    
    mutating func calculateRuble(ruble: Float) {
        let ruble = (money?.ruble ?? 0.0) * 7.53
        if ruble >= 0 {
            money = currency(dollar: 0, euro: 0, ruble: ruble)
        }
    }
    
    func getDollar() -> String {
        let dollar = money?.dollar ?? 0.0
        return String(format: "%.1f", dollar)
    }
    func getEuro() -> String {
        let euro = money?.euro ?? 0.0
        return String(format: "%.1f", euro)
    }
    func getRuble() -> String {
        let ruble = money?.ruble ?? 0.0
        return String(format: "%.1f", ruble)
    }
   
}
