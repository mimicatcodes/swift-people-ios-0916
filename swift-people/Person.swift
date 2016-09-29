//
//  Person.swift
//  swift-people
//
//  Created by Mirim An on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person{
    let name:String
    var ageInYears:Int?
    var skills = Set<String>()
    var qualifiedTutor:Bool {
        return skills.count >= 4
    }
    
    init(){
        self.name = "John Doe"
        self.ageInYears = nil
    }
    
    init(name:String, ageInYears:Int?) {
        self.name = name
        if let age = ageInYears {
        self.ageInYears = age
        }
    }
    
    convenience init(name:String){
        self.init(name:name, ageInYears : nil)
    }
    

    func celebrateBirthday()->String{
        if let age = ageInYears {
            self.ageInYears = age + 1
            return ("HAPPY \(self.ageInYears!)\(self.ageInYears!.ordinal().uppercased()) BIRTHDAY, \(name.uppercased())!!!")
        } else {
            return ("HAPPY BIRTHDAY, \(name.uppercased())!!!")
        }
    }
    
    func learnSkillBash(){
        skills.insert("bash")
    }
    
    func learnSkillXcode(){
        skills.insert("Xcode")
    }
    
    func learnSkillObjectiveC(){
        skills.insert("Objective-C")
    }
    
    func learnSkillSwift(){
        skills.insert("Swift")
    }
    
    func learnSkillInterfaceBuilder(){
        skills.insert("Interface Builder")
    }

}
