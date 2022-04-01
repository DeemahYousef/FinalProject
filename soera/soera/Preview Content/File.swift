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
func getBMR(weight:String, height:String, age:String, gender: Int)->Int{
    
    var BMR = 0.0
    var weightCalculation = 0.0
    var heightCalculation = 0.0
    var ageCalculaition = 0.0
    
    //If Gender is Male, use the following formula: BMR=66.47+ (13.75 x W) + (5.0 x H) - (6.75 x A)
    if gender == 0 {
        weightCalculation = 13.75 * (Double(weight) ?? 0)
        heightCalculation = 5.0 * (Double(height) ?? 0)
        ageCalculaition = 6.75 * (Double(age) ?? 0)
        
        BMR = 66.47 + weightCalculation  + heightCalculation - ageCalculaition
        
        return Int(BMR)
    }
    //Else Gender is Female, use the following formula: BMR=665.09 + (9.56 x W) + (1.84 x H) - (4.67 x A)
    else{
        weightCalculation = 9.56 * (Double(weight) ?? 0)
        heightCalculation = 1.84 * (Double(height) ?? 0)
        ageCalculaition = 4.67 * (Double(age) ?? 0)
        
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


