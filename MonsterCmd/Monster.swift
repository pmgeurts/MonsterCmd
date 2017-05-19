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
    
    //This is a property inspector
    //- didSet : notifications just after
    //- willSet: notification just before
    
    var crunchedBones: [Bone] = [ ] {
        didSet {
            print("crunched some nasty bones")
        }
        willSet {
            print("some nasty bone crunching is about to occur")
        }
    }
    
    
    
    
    /*
    // This is a lazy variable
    // Used for expensive calculations
     
     lazy var weight: Double = {
     return Double(self.crunchedBones.count) * Bone.weight
     }()
     
     */
    
    // This is a get only property
    // They can be recalculated instead of a lazy variable (example above in //)
    
    var weight: Double {
        get {
            return Double(self.crunchedBones.count) * Bone.weight
        }
        
        set (weight){
            //do something here when you set the computed property
            if weight >= 150 {
                print("Puuukkkkeeee")
                print("So relived")
            }
        }
    }
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

