//
//  Human.swift
//  MonsterCmd
//
//  Created by Paul Geurts on 18/05/2017.
//  Copyright © 2017 PG. All rights reserved.
//

import Foundation

class Human {
    static let toSurvive: String = "All Humans need to eat to survive"
    var name: String
    var type: humanType
    var bones: [Bone]
    
    init(type: humanType, name: String, bones: [Bone]) {
        self.type = type
        self.name = name
        self.bones = bones
    }
}



