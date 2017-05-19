//
//  Monster.swift
//  MonsterCmd
//
//  Created by Paul Geurts on 18/05/2017.
//  Copyright © 2017 PG. All rights reserved.
//

import Foundation

class Monster {
    var age: Int
    var name: String
    var monsterTeeth: teethType
    
    var crunchedBones: [Bone] = [ ]
    
    init(age: Int, name: String, monsterTeeth: teethType) {
        self.age = age
        self.name = name
        self.monsterTeeth = monsterTeeth
    }
    
    //1
    func eatHuman(whichHuman: Human) -> [Bone] {
        if whichHuman.type ==  .boy{
            print("Fresh YOUNG meat!")
        } else {
            print("No young meat today... :(")
        }
        crunchBones(bones: whichHuman.bones)        
        return crunchedBones
    }
    
    //2
    func eatManyHumans(whichHumans: [Human]) -> [Bone] {
        for humans in whichHumans {
            crunchBones(bones: humans.bones)
            
        }
        return crunchedBones
    }
    
    //3
    func crunchBones(bones: [Bone]){
        for currentBone in bones {
            crunchBone(whichBoneType: currentBone)
        }
    }
    
    //4
    func crunchBone(whichBoneType: Bone){
        whichBoneType.crunched = true
        crunchedBones.append(whichBoneType)
        switch whichBoneType.type {
        case .boyBone:
            print("crunching boy")
        case .manBone:
            print("crunching man")
        case .womanBone:
            print("crunching woman")
        }
    }
    
}


