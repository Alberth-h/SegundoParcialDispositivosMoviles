//
//  Car.swift
//  AutoRace
//
//  Created by Alexia Ruiz Quiroz on 20/10/21.
//

import Foundation

class Car {
    var name : String?
    var carPrev : String?
    var carModel : [String]
    var speed : String?
    var acceleration : String?
    var handling : String?
    var weight : String?
    
    var drivers : [Driver] = []
    
    init(name: String, carPrev: String, carModel: [String], speed: String, acceleration: String, handling: String, weight: String, drivers: [Driver]) {
            self.name = name
            self.carPrev = carPrev
            self.carModel = carModel
            self.speed = speed
            self.acceleration = acceleration
            self.handling = handling
            self.weight = weight
            self.drivers = drivers
        }
    
}
