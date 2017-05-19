//
//  Bone.swift
//  MonsterCmd
//
//  Created by Paul Geurts on 18/05/2017.
//  Copyright © 2017 PG. All rights reserved.
//

import Foundation

class Bone {
    var type: boneType
    var crunched: Bool
    
    init(type: boneType, crunched: Bool) {
        self.type = type
        self.crunched = crunched
    }
    
    func crunchTheBone(crunched: Bool) {
        self.crunched = crunched
    }
}
