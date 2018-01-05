//
//  ItemModel.swift
//  WeatherApp
//
//  Created by Ganesh on 12/25/17.
//  Copyright © 2017 Ganesh Kafle. All rights reserved.
//

import Foundation

struct ItemModel {
    var itemName: String?
    var temperature: Float?
    var detailName: String?
    var status:String?
    
    init() {
        
    }
    
    init(name: String, temperature:Float, detail: String, status:String) {
        self.itemName = name
        self.temperature = temperature
        self.detailName = detail
        self.status = status
    }
}
