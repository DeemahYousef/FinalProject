//
//  File.swift
//  soera
//
//  Created by DIMA ALKHALEDI on 30/03/2022.
//

import Foundation
class BMRcalculator{
    var gender = 0
    var age:Int = 0
    var length:Double = 0.0
    var weight:Double = 0.0
}
func getBMR(weight:Double, height:Double, age:Int, gender: String)->Int{
    
    var BMR = 0.0
    var weightCalculation = 0.0
    var heightCalculation = 0.0
    var ageCalculaition = 0.0
    
    //If Gender is Male, use the following formula: BMR=66.47+ (13.75 x W) + (5.0 x H) - (6.75 x A)
    if gender == ("ذكر") {
        weightCalculation = 13.75 * (weight)
        heightCalculation = 5.0 * (height)
        ageCalculaition = 6.75 * Double(age)
        
        BMR = 66.47 + weightCalculation  + heightCalculation - ageCalculaition
        
        return Int(BMR)
    }
    //Else Gender is Female, use the following formula: BMR=665.09 + (9.56 x W) + (1.84 x H) - (4.67 x A)
    else{
        weightCalculation = 9.56 * (weight)
        heightCalculation = 1.84 * (height)
        ageCalculaition = 4.67 * Double(age)
        
        BMR =  665.09 + weightCalculation + heightCalculation - ageCalculaition
        
        return Int(BMR)
    }
}

//Formula to calculate remaining calories
func getRemaining(goal: Int, current: Int)->Int{
    var remaining = goal - current
    if remaining < 0 {
        remaining = 0
    }
    return remaining
}


