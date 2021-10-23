//
//  Driver.swift
//  AutoRace
//
//  Created by Alexia Ruiz Quiroz on 22/10/21.
//

import Foundation

class Driver {
    var photo : String?
    var name : String?
    var time : String?
    var nationality : String?
    var position : String?
    
    init (photo: String, name: String, time: String, nationality: String, position: String) {
        self.photo = photo
        self.name = name
        self.time = time
        self.nationality = nationality
        self.position = position
    }
}
