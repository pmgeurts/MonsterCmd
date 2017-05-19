//
//  main.swift
//  MonsterCmd
//
//  Created by Paul Geurts on 18/05/2017.
//  Copyright © 2017 PG. All rights reserved.
//

import Foundation

//Boy, Man and Woman are subclasses of human, so we can use the init function to subclass these (see swift files)

// Creates array of bones
var boyBones: [Bone] = []
var manBones: [Bone] = []
var womanBones: [Bone] = []

// Loop around # and create onstances for Bone
for loopCounter in 1...1 {
    
    var boneInstance = Bone(type: .boyBone, crunched: false)
    boyBones.append(boneInstance)
    
    var boneInstance2 = Bone(type: .manBone, crunched: false)
    manBones.append(boneInstance2)
    
    var boneInstance3 = Bone(type: .womanBone, crunched: false)
    womanBones.append(boneInstance3)
    
}

//Create variable called the"Boy/Man/Woman"

//
var theBoy = Boy(type: .boy, name: "Paul", bones: boyBones)
var theMan = Man(type: .man, name: "Rien", bones: manBones)
var theWoman = Woman(type: .woman, name: "Clo", bones: womanBones)
var humansToEat: [Human] = [theBoy, theMan, theWoman] //as Array

var BonePod = Monster(age: 200, name: "KiLlErMoNsTeR", monsterTeeth: .grindingTeeth)
var bonesReturned = BonePod.eatManyHumans(whichHumans: humansToEat)
print(BonePod.weight)
BonePod.eatManyHumans(whichHumans: humansToEat)
BonePod.weight = 300
print(BonePod.weight)
print(bonesReturned)
print(BonePod.weight)
print(Human.toSurvive)

print(Woman.toSurvive)
//BonePod.weight = 1
print(BonePod.weight)



/* print(theWoman.toSurvive)

for piet in bonesReturned {
    print(piet.type, piet.crunched)
} */
